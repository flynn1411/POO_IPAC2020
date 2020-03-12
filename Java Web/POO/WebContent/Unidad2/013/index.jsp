<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="POO">
		<meta name="description" content="Aplicar CSS en HTML">
		<title>Insert title here</title>
		
		<style>
			
			/*Este es un comentario en CSS*/
			/*Estilo al selector div*/
			
			.box{
				border: 2px dotted black;
				position: fixed;
				width: 50vw;
				height: 50vh;
			}
			
			#first{
			background-color: red;
			top: -45vh;
			left: -45vw;
			}
			
			#second{
			background-color: blue;
			top: -45vh;
			right: -45vw;
			}
			
			#third{
			background-color: green;
			bottom: -45vh;
			left: -45vw;
			}
			
			#fourth{
			background-color: yellow;
			bottom: -45vh;
			right: -45vw;
			}
			
			/*Pseudo CSS*/
			#first:hover{
				top: 0;
				left: 0;
			}
			
			#second:hover{
			    /*background-color: maroon;*/
				top: 0;
				right: 0;
			}
			
			#third:hover{
				bottom: 0;
				left: 0;
			}
			
			#fourth:hover{
				bottom: 0;
				right: 0;
			}
			
		</style>
		
	</head>
	<body>
	
		<div id="selectAnOption">
			<select onchange="changeCSS(this)">
				<option value="0">Corners</option>
				<option value="1">Cross</option>
			</select>
			<div id="style"></div>
		</div>
		
		<div id="first" class="box"></div>
		<div id="second" class="box"></div>
		<div id="third" class="box"></div>
		<div id="fourth" class="box"></div>
		
		<script>
		
			window.onload = changeCSS;
			
			function changeCSS(select){
				
				if(select.value == 0){
					
					var newStyle = 
						`<style>.box{
							border: 2px dotted black;
							position: fixed;
							width: 50vw;
							height: 50vh;
						}
					
						#first{
							background-color: red;
							top: -45vh;
							left: -45vw;
						}
						
						#second{
							background-color: blue;
							top: -45vh;
							right: -45vw;
						}
						
						#third{
							background-color: green;
							bottom: -45vh;
							left: -45vw;
						}
						
						#fourth{
							background-color: yellow;
							bottom: -45vh;
							right: -45vw;
						}
						
						/*Pseudo CSS*/
						#first:hover{
							top: 0;
							left: 0;
						}
						
						#second:hover{
						    /*background-color: maroon;*/
							top: 0;
							right: 0;
						}
						
						#third:hover{
							bottom: 0;
							left: 0;
						}
						
						#fourth:hover{
							bottom: 0;
							right: 0;
						}</style>
						`;
					
				}else{
					var newStyle = ``;
				}
				
				style.innerHTML = newStyle;
				
			}
		
		</script>
	</body>
</html>