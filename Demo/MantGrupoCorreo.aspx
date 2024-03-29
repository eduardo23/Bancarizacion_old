﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MantGrupoCorreo.aspx.cs" Inherits="Demo.MantGrupoCorre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btnHermes {
            background-color: orangered;
            border: none;
            color: white;
            padding: 10px 22px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

        .btnHermesNegro {
            background-color: #3c454f;
            border: none;
            color: white;
            padding: 10px 22px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            /* border-radius: 12px; */
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

        .btn-link-tabla {
            width: 100%;
            height: auto;
            background-color: orangered;
            border: none;
            color: white;
            padding: 3px 1px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            /* box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19); */
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

        table.table-style-one {
            font-family: verdana,arial,sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #3A3A3A;
            border-collapse: collapse;
        }

            table.table-style-one th {
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #ffffff;
                background-color: #3c454f;
                color: white;
                text-align: center;
            }

            table.table-style-one td {
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #3A3A3A;
                background-color: #ffffff;
            }

        .alert-top {
            top: 50px;
            width: 100%;
            display: none;
            text-align: center;
            margin-bottom: 0;
            padding: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-header">
        <div class="container-fluid">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <a data-toggle="collapse" data-parent="#accordion2" href="#collapse2" style="color: white"><b>Consulta Grupo de Correo</b> : Criterios de busqueda </a>
                </div>
                <div class="panel-body">
                    <div class="form-group row">
                        <div class="col-sm-12 col-md-12 col-lg-12">
                                <div class="col-sm-3 col-md-2 col-lg-3">
                                    <div class="col-sm-4 col-md-4 col-lg-4">
                                        <label for="cbo_origenfil" class="control-label">Origen</label>
                                    </div>
                                    <div class="col-sm-8 col-md-8 col-lg-8">
                                        <select name="cbo_origenfil" id="cbo_origenfil" class="form-control" data-toggle="tooltip" data-placement="left" data-original-title="Origen">
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4 col-md-5 col-lg-4">
                                   <div class="col-sm-2 col-md-2 col-lg-2">
                                        <label for="txt_grupofil" class="control-label">Grupo</label>
                                    </div>
                                   <div class="col-sm-10 col-md-10 col-lg-10">
                                        <input name="txt_grupofil" type="text"  style="text-transform: uppercase;" id="txt_grupofil" class="form-control" placeholder="Ingrese Grupo" data-toggle="tooltip" data-placement="left" data-original-title="Grupo">
                                    </div>
                                </div>
                                <div class="col-sm-3 col-md-3 col-lg-3">
                                    <div class="col-sm-3 col-md-3 col-lg-3">
                                        <label for="cbo_estadofil" class="control-label">Estado</label>
                                    </div>
                                    <div class="col-sm-9 col-md-9 col-lg-9">
                                        <select name="cbo_estadofil" id="cbo_estadofil" class="form-control" data-toggle="tooltip" data-placement="left" data-original-title="Estado">
                                        </select>
                                    </div>                                
                                </div>
                                <div class="col-sm-2 col-md-2 col-lg-2" style="text-align:right;">
                                    <div class="col-sm-6 col-md-6 col-lg-6">
                                        <button type="button" class="btnHermesNegro"  onclick="buscar();">
                                            Buscar
                                        </button>
                                    </div>
                                    <div class="col-sm-6 col-md-6 col-lg-6">
                                        <button type="button" class="btnHermes"  onclick="modalRegistrar();">
                                            Nuevo
                                        </button>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>


                    <div class="form-group row">
                        <div class="col-sm-12 col-lg-12">
                            <table class="table-style-one" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>Grupo</th>
                                        <th>Origen</th>
                                        <th>Estado</th>
                                        <th>Acción</th>
                                    </tr>
                                </thead>
                                <tbody id="tbodygrupocorreo">
                                    <!--<tr>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Eliminar</a></td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Anular</a></td>
                                    </tr>
                                    <tr>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Eliminar</a></td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Anular</a></td>
                                    </tr>
                                    <tr>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td>XXXXXXX</td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Eliminar</a></td>
                                        <td><a href="javascript:void();" class="btn-link-tabla">Anular</a></td>
                                    </tr>-->
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-12 text-center">
                            <nav aria-label="Page navigation">
                                <ul class="pagination" id="pagination"></ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" tabindex="-1" role="dialog" id="myModal" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #D6EAF8">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">Nuevo Grupo</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <div id="alert-info" class="alert alert-info alert-top" role="alert">
                                    <button type="button" class="close alert-close" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <span class="alert-msg"></span>
                                </div>
                                <div id="alert-warn" class="alert alert-warning alert-top" role="alert">
                                    <button type="button" class="close alert-close" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <span class="alert-msg"></span>
                                </div>
                                <div id="alert-danger" class="alert alert-danger alert-top" role="alert">
                                    <button type="button" class="close alert-close" aria-label="Close"><span aria-hidden="true">×</span></button>
                                    <span class="alert-msg"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="display: none;" id="divcodigo">
                            <label for="RazonSocial" class="col-lg-4 control-label">Código</label>
                            <div class="col-lg-8">
                                <input name="txt_codigo" type="text" value="0" id="txt_codigo" readonly="readonly" class="form-control" data-toggle="tooltip" data-placement="left" data-original-title="Código">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="RazonSocial" class="col-lg-4 control-label">Grupo</label>
                            <div class="col-lg-8">
                                <input name="txt_grupo" type="text" value="" id="txt_grupo" class="form-control" placeholder="Ingrese Grupo" data-toggle="tooltip" data-placement="left" data-original-title="Grupo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Departamento" class="col-lg-4 control-label">Origen</label>
                            <div class="col-lg-8">
                                <select name="cbo_origen" id="cbo_origen" class="form-control" data-toggle="tooltip" data-placement="left" data-original-title="Origen">
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Departamento" class="col-lg-4 control-label">Estado</label>
                            <div class="col-lg-8">
                                <select name="cbo_estado" id="cbo_estado" class="form-control" data-toggle="tooltip" data-placement="left" data-original-title="Estado">
                                </select>
                            </div>
                        </div>

                        <div class="form-inline">
                            <div class="col-lg-2">
                            </div>
                            <div class="col-lg-10">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">                        
                        <button type="button" class="btnHermes" onclick="Grabar();">Grabar</button>
                        <button type="button" class="btnHermesNegro" data-dismiss="modal" aria-label="Close">Cerrar</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>

    <div id="myDialog" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #D6EAF8">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Hermes Seguros</h4>
                </div>
                <div class="modal-body" id="getCode" style="font-size: 18px">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"  style="background-color: #D6EAF8">
                    Mensaje de Confirmacion
                </div>
                <div class="modal-body">
                    Esta seguro que desea eliminar el registro?                
                </div>
                <div class="modal-footer">
                      <button id="btn-submit-confirmacion" type="button" class="btnHermes" onclick="Grabar();">Aceptar</button>
                      <button type="button" class="btnHermesNegro" data-dismiss="modal" aria-label="Close">Cerrar</button>
             
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" name="name" id="flag" value="true" />
    <input type="hidden" name="name" id="flag_accion" value="" />
    <!-- /.modal -->
    <script type="text/javascript">
        Alert = {
            show: function ($div, msg) {
                $div.find('.alert-msg').text(msg);
                if ($div.css('display') === 'none') {
                    $div.fadeIn(1000).delay(2000).fadeOut(2000);
                }
            },
            info: function (msg) {
                this.show($('#alert-info'), msg);
            },
            warn: function (msg) {
                this.show($('#alert-warn'), msg);
            },
            danger: function (msg) {
                this.show($('#alert-danger'), msg);
            }
        }


        var $pagination = $('#pagination');
        var defaultOpts = {
            totalPages: 10
        };
        var RegistroXpagina = 10;
        var firstPageClick = true;

        function buscar() {
            $("#flag").val("true");
            listarCheques(1);
        }
        function listarCheques(pagina) {
            debugger
            var id_cbo_origenfil = $("#cbo_origenfil").val();
            if (id_cbo_origenfil == null) {
                id_cbo_origenfil = 0;
            }
            var id_cbo_estadofil = $("#cbo_estadofil").val();
            if (id_cbo_estadofil == null) {
                id_cbo_estadofil = 1;
            }

            var id_txt_grupo = $("#txt_grupofil").val();

            var currentPage = 0;
            if (firstPageClick) {
                currentPage = $pagination.twbsPagination('getCurrentPage');
            } else {
                currentPage = pagina;
            }
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/getListGrupoCorreo",
                data: "{'origen':'" + id_cbo_origenfil + "','grupo':'" + id_txt_grupo + "','estado':'" + id_cbo_estadofil + "','paginaActual':'" + currentPage + "','RegistroXpagina':'" + RegistroXpagina + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var vals = new Object();
                    var result = JSON.parse(response.d.DataJson);
                    var paginacion = JSON.parse(response.d.paginacion);
                    var HTML = "";
                    var modalActualizar = "";
                    var modalEliminar = "";
                    document.getElementById("tbodygrupocorreo").innerHTML = "";
                    if (result.length > 0) {
                        for (index in result) {
                            vals = {
                                id: parseInt(result[index]["id"]),
                                estado: result[index]["estado"],
                                origen: result[index]["origen"],
                                descripcion: result[index]["descripcion"]
                            };
                            var Vals = JSON.stringify(vals);
                            modalEliminar = "modalEliminar(" + Vals + ")";
                            modalActualizar = "modalActualizar(" + Vals + ")";
                            HTML += "<tr>";
                            HTML += "<td>" + result[index]["descripcion"] + "</td>";
                            HTML += "<td>" + result[index]["descorigen"] + "</td>";
                            HTML += "<td>" + result[index]["descestado"] + "</td>";
                            HTML += "<td>";
                            HTML += "<a href='#' onclick='" + modalActualizar + "' title='Actualizar registro' ><span class='fa fa-trash'></span> Editar</a> ";
                            HTML += "<a href='#' onclick='" + modalEliminar + "' title='Eliminar registro' ><span class='fa fa-edit'></span> Eliminar</a>";
                            HTML += "</td>";
                            HTML += "</tr>";
                        }
                        document.getElementById("tbodygrupocorreo").innerHTML = HTML;
                        $pagination.twbsPagination('destroy');
                        $pagination.twbsPagination($.extend({}, defaultOpts, {
                            startPage: currentPage,
                            totalPages: paginacion.TotalPages,
                            first: "Primero",
                            prev: "Anterior",
                            next: "Siguiente",
                            last: "último",
                            onPageClick: function (event, page) {
                                var flag = $("#flag").val();
                                if (flag == "true") {
                                    $("#flag").val("false");
                                    return;
                                } else {
                                    listarCheques(page);
                                }
                                $("#flag").val("true");
                            }
                        }));

                    } else {
                        HTML += "<tr>";
                        HTML += "<td colspan='4'>No se encontraron registro.</td>";
                        HTML += "</tr>";
                        document.getElementById("tbodygrupocorreo").innerHTML = HTML;
                        $pagination.twbsPagination('destroy');
                    }
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }
        $(document).ready(function (e) {
            loadEstado();
            loadOrigen();
            $("#flag").val("true");
            listarCheques(1);
        });

        function loadEstado() {
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/getListParametrosMaestro",
                data: '{skey:"ESTADO_GRUPOCORREO"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var models = JSON.parse(response.d.DataJson);
                    $('#cbo_estado').empty();
                    $('#cbo_estadofil').empty();
                    $('#cbo_estado').append("<option value=''>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].valor;
                        var text = models[i].descripcion;
                        $("#cbo_estado").append($("<option></option>").val(valor).html(text));
                    }
                    $('#cbo_estado option[value="1"]').attr("selected", "selected");

                    //$('#cbo_estadofil').append("<option value=''>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].valor;
                        var text = models[i].descripcion;
                        $("#cbo_estadofil").append($("<option></option>").val(valor).html(text));
                    }
                    //$('#cbo_estadofil option[value="1"]').attr("selected", "selected");
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }
        function loadOrigen() {
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/getListParametrosMaestro",
                data: '{skey:"ORIGEN_GRUPOCORREO"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var models = JSON.parse(response.d.DataJson);
                    $('#cbo_origen').empty();
                    $('#cbo_origenfil').empty();
                    $('#cbo_origen').append("<option value='0'>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].valor;
                        var text = models[i].descripcion;
                        $("#cbo_origen").append($("<option></option>").val(valor).html(text));
                    }
                    $('#cbo_origenfil').append("<option value='0'>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].valor;
                        var text = models[i].descripcion;
                        $("#cbo_origenfil").append($("<option></option>").val(valor).html(text));
                    }
                    //$('#cbo_origenfil option[value="1"]').attr("selected", "selected");
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }


        function Grabar() {
            var grupo = $("#txt_grupo").val();
            var estado = $("#cbo_estado").val();
            var origen = $("#cbo_origen").val();

            var mensaje = "";
            if (grupo == "") {
                mensaje = mensaje + "- Ingrese grupo \n";
                Alert.danger(mensaje);
                return false;
            }
            if (origen == "0") {
                mensaje = mensaje + "- Seleccione Origen \n";
                Alert.danger(mensaje);
                return false;
            }
            if (estado == "") {
                mensaje = mensaje + "- Seleccione Estado \n";
                Alert.danger(mensaje);
                return false;
            }

            var data = {
                descripcion: $("#txt_grupo").val(),
                estado: $("#cbo_estado").val(),
                origen: $("#cbo_origen").val(),
                id: $("#txt_codigo").val()
            };
            var estado = $("#flag_accion").val();

            if (estado == "UPD") {
                url = "MantGrupoCorreo.aspx/ActualiarGrupoCorreo";

            } else if (estado == "INS") {
                url = "MantGrupoCorreo.aspx/InsertGrupoCorreo";
            }
            debugger;
            $.ajax({
                type: "POST",
                url: url,
                contentType: "application/json",
                data: JSON.stringify({ objeto: data }),
                dataType: "json",
                success: function (response) {
                    var result = response.d.Status;
                    var mensaje = response.d.Mensaje;
                    if (result == "OK") {
                        if (estado == "INS") {
                            $("#txt_grupo").val("");
                            //$("#cbo_estado").val("0");
                            $("#cbo_origen").val("0");
                        }
                        Alert.info(mensaje);
                        $("#flag").val("true");
                        listarCheques(1);
                    } else {
                        Alert.info(mensaje);
                    }
                },
                error: function (response) {
                    if (response.length != 0)
                        Alert.info(mensaje);
                }
            });
        }

        function modalEliminar(data) {
            $("#confirm-submit").modal("show");
            $('#btn-submit-confirmacion').attr('onclick', 'btnEliminar(' + data.id + ')');
        }
        function btnEliminar(id) {
            var data = {
                id: id,
                estado: 0
            };
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/EliminarGrupoCorreo",
                contentType: "application/json",
                data: JSON.stringify({ objeto: data }),
                dataType: "json",
                success: function (response) {
                    $("#flag").val("true");
                    listarCheques(1);
                    $("#myDialog").modal("toggle");
                    $("#getCode").html(response.d.Mensaje);
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
            $("#confirm-submit").modal("hide");
        }

        function modalActualizar(data) {
            $("#gridSystemModalLabel").text("Actualizar Grupo");
            $("#divcodigo").css("display", "block");
            $("#txt_grupo").val(data.descripcion);
            $("#cbo_estado").val(data.estado);
            $('#cbo_estado').prop('disabled', false);
            $("#cbo_origen").val(data.origen);
            $("#txt_codigo").val(data.id);
            $("#flag_accion").val("UPD");
            $('#myModal').modal('show');
        }
        function modalRegistrar() {
            $("#gridSystemModalLabel").text("Nuevo Grupo");
            $("#txt_grupo").val("");
            //$("#cbo_estado").val("0");
            $('#cbo_estado option[value="1"]').attr("selected", "selected");
            $('#cbo_estado').prop('disabled', 'disabled');
            $("#cbo_origen").val("0");
            $("#flag_accion").val("INS");
            $("#divcodigo").css("display", "none");
            $('#myModal').modal('show');
        }
    </script>
</asp:Content>
