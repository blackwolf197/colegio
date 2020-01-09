<script>
function alerta_eliminar(id){
		Swal.fire({
			title: 'Esta seguro que desea eliminar?',
			text: "El registro se eliminara por completo!",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: 'Si,Eliminar!'
		}).then((result) => {
			if (result.value) {
				window.location.href = "<?= base_url('seccioncontroller/eliminar/')?>"+id;
			}
		})
	}

</script>