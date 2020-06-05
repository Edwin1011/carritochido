<%-- 
    Document   : ListaCli
    Created on : 20/05/2020, 12:00:12 AM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <script src="js/Chart.js"></script>
        <title>Ventas</title>
    </head>
    <body>
        <header>
            <input type="checkbox" id="btn-menu">
                <label for="btn-menu"></label>
            <div class="logo-cont">
                <div class="logo">
                </div>
            </div>
        <nav class="menu">
                <ul>
                    
                    <li><a href="index_admin.jsp">Ver los productos</a></li>
                    <li><a href="ListaCli.jsp">Ver todos los clientes</a></li>
                    <li><a href="Perfil_admin.jsp">Ver mi perfil</a></li>
                </ul>   
            
            </nav>
        </header>
        
        <div class="con-graficas">
            <h1>Grafica semanal</h1>
            <div class="grafica">
                
                <div></div>
                    <div style="width: 50%;">
                        <canvas id="myChart" width="400" height="400"></canvas>
                    </div>
                <div></div>    
                    <script>
                                    var cantidades = new Array();
                                    var fechas = new Array(); 
                    </script>
                    <%
                    List<estadistica> lista = estadistica.get7Ventas();
                    estadistica c = new estadistica();
                    int pos = lista.size()-1;
                    for (int i = 0; i < lista.size(); i++) {
                            c = (estadistica)lista.get(i);
                %>          
                       
                                <script>
                                    console.log("quepedo2");
                                    cantidades[<%=pos%>] = "<%= c.getCantidad()%>";
                                    fechas[<%=pos%>] = "<%= c.getFecha_c()%>";
                                    console.log(cantidades[<%=pos%>]);
                                    console.log(fechas[<%=pos%>]);
                                    
                                     
                                </script>
                    
                <%    pos -= 1;
                 }%> 
                <script>
                var ctx = document.getElementById('myChart').getContext('2d');
                var myLineChart = new Chart(ctx, {
                    type: "line",
                    data:{
                        labels:fechas,
                        datasets:[
                            {
                            label:"Grafica semanal",
                            borderColor:"rgb(12,12,12)",
                            fill: false,
                            data:cantidades
                        }
                        ]
                    }, options: {
                        responsive:true,
                                scales: {
                                    xAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks:{
                                                fontColor: "#c2c2c2"
                                            }}],
                                    yAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks: {
                                            fontColor: "#c2c2c2",
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            } 
                });
                
                </script> 
            </div>
                
                
                <h1>Grafica quincenal</h1>
            <div class="grafica">
                <div></div>
                <div style="width: 50%;" >
                        <canvas id="myChart2" width="400" height="400"></canvas>
                    </div>
                 <div></div>   
                    <script>
                                    var cantidades2 = new Array();
                                    var fechas2 = new Array(); 
                    </script>
                    <%
                    List<estadistica> lista2 = estadistica.get15Ventas();
                    estadistica c2 = new estadistica();
                    int pos2 = lista2.size()-1;
                    for (int i = 0; i < lista2.size(); i++) {
                            c2 = (estadistica)lista2.get(i);
                %> 
                       
                                <script>
                                    
                                    cantidades2[<%=pos2%>] = "<%= c2.getCantidad()%>";
                                    fechas2[<%=pos2%>] = "<%= c2.getFecha_c()%>";
                                    /*console.log(cantidades2[<%=i%>]);
                                    console.log(fechas2[<%=i%>]);*/
                                    
                                     
                                </script>
                <%pos2 -=1; }%>           
                <script>
                var ctx2 = document.getElementById('myChart2').getContext('2d');
                var myLineChart2 = new Chart(ctx2, {
                    type: "line",
                    data:{
                        labels:fechas2,
                        datasets:[
                            {
                            label:"Grafica quincenal",
                            borderColor:"#216869",
                            fill: false,
                            data:cantidades2
                        }
                        ]
                    }, options: {
                        responsive:true,
                                scales: {
                                    xAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks:{
                                                fontColor: "#c2c2c2"
                                            }}],
                                    yAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks: {
                                            fontColor: "#c2c2c2",
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            } 
                });
                
                </script>
            </div>
                <h1>Grafica mensual</h1>
            <div class="grafica">
                <div></div>
                <div style="width: 50%;">
                        <canvas id="myChart3" width="400" height="400"></canvas>
                </div>
                  <div></div>  
                    <script>
                                    var cantidades3 = new Array();
                                    var fechas3 = new Array(); 
                                    var dias = 0;
                    </script>
                    <%
                    List<estadistica> lista3 = estadistica.get31Ventas();
                    estadistica c3 = new estadistica();
                    int pos3 = lista3.size()-1;
                    for (int i = 0; i < lista3.size(); i++) {
                            c3 = (estadistica)lista3.get(i);
                %> 
                       
                                <script>
                                    dias+=1;
                                    cantidades3[<%=pos3%>] = "<%= c3.getCantidad()%>";
                                    fechas3[<%=pos3%>] = "<%= c3.getFecha_c()%>";
                                    /*console.log(cantidades3[<%=i%>]);
                                    console.log(fechas3[<%=i%>]);*/
                                    
                                     
                                </script>
                <%pos3 -= 1; }%>           
                <script>
                    console.log(dias);
                var ctx3 = document.getElementById('myChart3').getContext('2d');
                var myLineChart3 = new Chart(ctx3, {
                    type: "line",
                    data:{
                        labels:fechas3,
                        datasets:[
                            {
                            label:"Grafica mensual",
                            borderColor:"#00AF6A",
                            fill: false,
                            data:cantidades3
                        }
                        ]
                    }, options: {
                        responsive:true,
                                scales: {
                                    xAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks:{
                                                fontColor: "#c2c2c2"
                                            }}],
                                    yAxes: [{
                                            gridLines: { color: "#c2c2c2" },
                                            ticks: {
                                            fontColor: "#c2c2c2",
                                            beginAtZero: true
                                        }
                                    }]
                                }
                            } 
                });
                
                </script>
            </div>
        </div>        
                
                
            
    </body>
</html>

