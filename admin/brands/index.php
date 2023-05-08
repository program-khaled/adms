<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<style>
	.brand-img{
		width:3em;
		height:3em;
		object-fit:cover;
		object-position:center center;
	}
</style>
<div class="card card-outline rounded-0 card-navy">
	<div class="card-header">
		<h3 class="card-title">قائمة الماركات</h3>
		<div class="card-tools">
			<a href="javascript:void(0)" id="create_new" class="btn btn-flat btn-sm btn-primary"><span class="fas fa-plus"></span>  اضافة جديد</a>
		</div>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-hover table-striped table-bordered" id="list">
				<colgroup>
					<col width="5%">
					<col width="20%">
					<col width="50%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>تاريخ الاضافة</th>
						<th>الماركة</th>
						<th>الحالة</th>
						<th>تحرير</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from `brand_list` where delete_flag = 0 order by `name` asc ");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo date("Y-m-d H:i",strtotime($row['date_created'])) ?></td>
							<td class=""><?= $row['name'] ?></td>
							<td class="text-center">
                                <?php if($row['status'] == 1): ?>
                                    <span class="badge badge-success px-3 rounded-pill">نشط </span>
                                <?php else: ?>
                                    <span class="badge badge-danger px-3 rounded-pill">غير نشط</span>
                                <?php endif; ?>
                            </td>
							<td align="center">
								 <button type="button" class="btn btn-flat p-1 btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                تحرير
				                    <span class="sr-only">قائمة</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
				                    <a class="dropdown-item view_brand" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye text-dark"></span> عرض</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item edit_brand" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> تعديل</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-danger"></span> حذف</a>
				                  </div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#create_new').click(function(){
			uni_modal('<i class="far fa-plus-square"></i> ماركة جديد','brands/manage_brand.php')
		})
		$('.view_brand').click(function(){
			uni_modal('<i class="fa fa-th-list"></i> تفاصيل الماركة', 'brands/view_brand.php?id='+$(this).attr('data-id'))
		})
		$('.edit_brand').click(function(){
			uni_modal('<i class="fa fa-edit"></i> تحديث', 'brands/manage_brand.php?id='+$(this).attr('data-id'))
		})
		$('.delete_data').click(function(){
			_conf("هل أنت متأكد من حذف هذه العلامة التجارية نهائيًا؟","delete_brand",[$(this).attr('data-id')])
		})
		$('.table').dataTable({
			columnDefs: [
					{ orderable: false, targets: [4] }
			],
			order:[0,'asc']
		});
		$('.dataTable td,.dataTable th').addClass('py-1 px-2 align-middle')
	})
	function delete_brand($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_brand",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>