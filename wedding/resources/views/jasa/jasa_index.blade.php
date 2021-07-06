@extends('admin.layouts.master')

@section('content')

<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<div class="box">
			<div class="box-header">
				<center><h3>{{ $title }}</h3></center>
			</div>
			<div class="box-body">
				<center>
					<p>Semoga Acara Pernikahan Ini Dapat Berjalan Dengan lancar</p>
				</center>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')

<script type="text/javascript">
	$(document).ready(function(){
		var flash = "{{ Session::has('pesan') }}";
		if(flash){
			var pesan = "{{ Session::get('pesan') }}";
			alert(pesan);
		}
	})
</script>

@endsection