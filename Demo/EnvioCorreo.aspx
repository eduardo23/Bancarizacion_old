﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EnvioCorreo.aspx.cs" Inherits="Demo.EnvioCorreo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/FileStyle/bootstrap-filestyle.js"></script>
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

        .containerpanel {
            width: 100%;
            height: auto;
            padding: 0px 85px;
        }

        .panel1 {
            width: 100%;
            height: 179px;
            border: 1px solid #D5CFDF;
            border-radius: 6px;
        }

        .panel2 {
            width: 100%;
            height: 179px;
            border: 1px solid #D5CFDF;
            border-radius: 6px;
        }

        .panelButton {
            width: 100%;
            height: 178px;
            border: 1px solid #D5CFDF;
            border-radius: 6px;
            float: right;
            /* margin-top: -179px; */
            /* margin-right: 417px; */
            padding: 5px 5px;
        }

        .btnHermesEnvioCorreo {
            margin-top: 18px;
            width: 100%;
            background-color: orangered;
            border: none;
            color: white;
            padding: 1px 22px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
        }

        .tilepanel {
            padding: 0px 6px;
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
                    <a data-toggle="collapse" data-parent="#accordion2" href="#collapse2" style="color: white"><b>Envio Correo</b> </a>
                </div>
                <div class="panel-body">
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
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-1 control-label">Asunto:</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="txt_asunto" placeholder="Ingrese Asunto">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-1 control-label">Origen:</label>
                        <div class="col-sm-5">
                            <select id="cbo_origen" onchange="selectChange()" class="form-control">
                            </select>
                        </div>
                        <label for="inputEmail3" class="col-sm-1 control-label">Plantilla:</label>
                        <div class="col-sm-5">
                            <select id="cbo_plantilla" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-1 control-label">Seleccione Archivo:</label>
                        <div class="col-sm-11">
                            <input type="file" id="input08" onchange="checkfile(this);" multiple>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="containerpanel">
                            <div class="col-sm-12 col-lg-5">
                                <div class="panel1">
                                    <div class="tilepanel">
                                        <label for="exampleInputEmail1">Grupo Correo Origen</label>
                                    </div>
                                    <div>
                                        <select multiple="multiple" name="origen[]" id="cbogrupocorreoorigen" class="form-control" style="height: 152px;">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-2">
                                <div class="panelButton">
                                    <button type="button" class="btnHermesEnvioCorreo" id="quitartodos">
                                        |<<
                                    </button>
                                    <br />
                                    <button type="button" class="btnHermesEnvioCorreo" id="quitar">
                                        |<
                                    </button>
                                    <br />
                                    <button type="button" class="btnHermesEnvioCorreo" id="pasar">
                                        >|
                                    </button>
                                    <br />
                                    <button type="button" class="btnHermesEnvioCorreo" id="pasartodos">
                                        >>|
                                    </button>
                                </div>
                            </div>
                            <div class="col-sm-12 col-lg-5">
                                <div class="panel2">
                                    <div class="tilepanel">
                                        <label for="exampleInputEmail1">Grupo Correo Destino</label>
                                    </div>
                                    <div>
                                        <select multiple="multiple" name="cbogrupocorreodestino[]" id="cbogrupocorreodestino" class="form-control" style="height: 152px;">
                                        </select>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-4 text-center">
                            <button type="button" class="btnHermes" data-toggle="modal" onclick="modalRegistrar();">
                                Vista Previa
                            </button>
                        </div>
                        <div class="col-lg-4 text-center">

                            <button type="button" class="btnHermes" data-toggle="modal" onclick="EnviarCorreo();">
                                Enviar Correo
                            </button>

                        </div>
                        <div class="col-lg-4 text-center">
                            <button type="button" class="btnHermes" data-toggle="modal" onclick="modalRegistrar();">
                                Salir
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('#input08').filestyle({
            'placeholder': 'adjunte archivo',
            text: ' Examinar',
            btnClass: 'btn-success'
        });

        function checkfile(sender) {
            var validExts = new Array(".xlsx", ".xls", ".jpg", "JPEG", "png", ".doc", ".pdf", ".docx");
            var fileExt = sender.value;
            fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
            if (validExts.indexOf(fileExt) < 0) {
                sender.value = "";
                Alert.warn("El archivo seleccionado es inválido , los archivos válidos son de tipo " +
                         validExts.toString() + "");
                return false;
            }
            else return true;
        }

        Alert = {
            show: function ($div, msg) {
                $div.find('.alert-msg').text(msg);
                if ($div.css('display') === 'none') {
                    // fadein, fadeout.                    
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
        function copiarOpcion(opcion, destino) {
            var valor = $(opcion).val();
            if ($(destino + " option[value=" + valor + "]").length == 0) {
                $(opcion).appendTo(destino);
            }
        }

        function loadOrigen() {
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/getListParametrosMaestro",
                data: '{skey:"ORIGEN_GRUPOCORREO"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {

                    var models = JSON.parse(response.d.DataJson);// (typeof response.d) == 'string' ? eval('(' + response.d + ')') : response.d;
                    $('#cbo_origen').empty();
                    $('#cbo_origen').append("<option value='0'>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].valor;
                        var text = models[i].descripcion;
                        $("#cbo_origen").append($("<option></option>").val(valor).html(text));
                    }
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }
        function selectChange() {
            var origen = $("#cbo_origen").val();
            loadGrupoCorreoXOrigen(origen);
        }
        function loadGrupoCorreoXOrigen(origen) {
            $.ajax({
                type: "POST",
                url: "MantGrupoCorreo.aspx/getListGrupoCorreoXOrigen",
                data: '{origen:"' + origen + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var models = JSON.parse(response.d.DataJson);//(typeof response.d) == 'string' ? eval('(' + response.d + ')') : response.d;
                    $('#cbogrupocorreoorigen').empty();
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].id;
                        var text = models[i].descripcion;
                        $("#cbogrupocorreoorigen").append($("<option></option>").val(valor).html(text));
                    }
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }

        function loadPlantilla() {
            $.ajax({
                type: "POST",
                url: "AdministrarPlantillas.aspx/getPlanilla",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var models = JSON.parse(response.d.DataJson);
                    $('#cbo_plantilla').empty();
                    $('#cbo_plantilla').append("<option value='0'>--SELECCIONE--</option>");
                    for (var i = 0; i < models.length; i++) {
                        var valor = models[i].id;
                        var text = models[i].descripcion;
                        $("#cbo_plantilla").append($("<option></option>").val(valor).html(text));
                    }
                },
                error: function (response) {
                    if (response.length != 0)
                        alert(response);
                }
            });
        }


        function EnviarCorreo() {
            var selO = document.getElementsByName('cbogrupocorreodestino[]')[0];
            var list = [];
            for (i = 0; i < selO.length; i++) {
                //var objeto = {
                    id= selO.options[i].value
               // };
                    list.push(id);
            }
            var cbo_origen = $("#cbo_origen").val();
            var cbo_plantilla = $("#cbo_plantilla").val();
            var txt_asunto = $("#txt_asunto").val();

            if (txt_asunto == "") {
                Alert.warn("Por favor Ingrese Asunto");
                return false;
            }
            if (cbo_origen == "0") {
                Alert.warn("Por favor seleccione Fuentes de Datos");
                return false;
            }
            if (cbo_plantilla == "0") {
                Alert.warn("Por favor seleccione Plantilla");
                return false;
            }
            if (list.length == 0) {
                Alert.warn("Por favor agregue datos a la seccion Grupo Correo Destino.");
                return false;
            }
            var data = new FormData();
            
            //var files = $("#input08").get(0).files;
            //var inputfile = document.getElementById('input08').files;
            //for (var x = 0; x < inputfile.length; x++) {
            //    fd.append("Files[]", inputfile[x]);
            //}

            for (var i = 0, len = document.getElementById('input08').files.length; i < len; i++) {
                data.append("Files" + i, document.getElementById('input08').files[i]);
            }


           // data.append("Files", files[0]);
            data.append("cbo_origen", cbo_origen);
            data.append("cbo_plantilla", cbo_plantilla);
            data.append("txt_asunto", txt_asunto);
            data.append("list", list);
            $.ajax({
                type: 'post',
                url: "UploadEnvioCorreo.ashx",
                contentType: false,
                processData: false,
                data: data,
                success: function (response) {
                    var objeto = JSON.parse(response);
                    if (objeto.Result == "Ok") {
                        //Alert.info(objeto.Mensaje);
                        //listarPlanilla();
                        //listImagen = [];
                    } else {
                        Alert.danger(objeto.Mensaje);
                    }
                },
                error: function (error) {
                    Alert.danger("Error Consulte con el Administrador de Sistema.");
                }
            });
        }

        $(document).ready(function () {
            loadOrigen();
            loadPlantilla();
            $('#pasar').click(function () {
                copiarOpcion($('#cbogrupocorreoorigen option:selected').clone(), "#cbogrupocorreodestino");
                $('#cbogrupocorreoorigen option:selected').remove();
            });
            $('#pasartodos').click(function () {
                $('#cbogrupocorreoorigen option').each(function () {
                    copiarOpcion($(this).clone(), "#cbogrupocorreodestino");
                });
                $('#cbogrupocorreoorigen option').each(function () {
                    $(this).remove();
                });
            });
            $('#quitar').click(function () {
                copiarOpcion($('#cbogrupocorreodestino option:selected').clone(), "#cbogrupocorreoorigen");
                $('#cbogrupocorreodestino option:selected').remove();
            });
            $('#quitartodos').click(function () {
                $('#cbogrupocorreodestino option').each(function () {
                    copiarOpcion($(this).clone(), "#cbogrupocorreoorigen");
                });
                $('#cbogrupocorreodestino option').each(function () {
                    $(this).remove();
                });
            });
        });
    </script>
</asp:Content>