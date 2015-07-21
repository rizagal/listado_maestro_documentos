<%@ Page Title="Página principal" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default1.aspx.vb" Inherits="_Default1" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v11.2, Version=11.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
               
             
       .verticalHeader {
           width: 8px;
           height: 40px;
           padding-top: 80px;
            padding-bottom: auto;
            padding-left: 20px;
            padding-right: auto;
      

            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(-90deg);
            -ms-transform: rotate(-90deg);
            -o-transform: rotate(90deg);
            transform: rotate(-90deg);

            -webkit-transform-origin: 80% 80%;
            -moz-transform-origin: 80% 80%;
            -ms-transform-origin: 80% 80%;
            -o-transform-origin: 80% 80%;
            transform-origin: 80% 80%;

            filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);
        }
       </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource_listado" KeyFieldName="id_sgd" 
                    CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                    CssPostfix="Office2003Blue" style="text-align: left" 
                    ClientInstanceName="ASPxGridView1">
                    <Columns>
                        <dx:GridViewCommandColumn VisibleIndex="0" Width="60px">
                            <EditButton Visible="True">
                            </EditButton>
                            <NewButton Visible="True">
                            </NewButton>
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="id_sgd" ReadOnly="True" VisibleIndex="4">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <EditFormSettings Visible="False" />
                            <EditItemTemplate>
                                <dx:ASPxButton ID="ASPxButton1" runat="server" onclick="ASPxButton1_Click1" 
                                    Text="VER">
                                </dx:ASPxButton>
                            </EditItemTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="titulo_formato" VisibleIndex="7">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="TITULO FORMATO"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="version" VisibleIndex="8" 
                            Caption="VERSION">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="fecha_emision" VisibleIndex="9">
                            <PropertiesDateEdit>
                                <CalendarProperties ClearButtonText="Vaciar" TodayButtonText="Hoy">
                                    <FastNavProperties CancelButtonText="Cancelar" OkButtonText="Aceptar" />
                                </CalendarProperties>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesDateEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="FECHA EMISION"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="unidad" VisibleIndex="10">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="UNIDAD"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="area" VisibleIndex="12">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="AREA"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn Caption="INTERNO" FieldName="interno" 
                            VisibleIndex="13">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="EXTERNO" FieldName="externo" 
                            VisibleIndex="14">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="sitio_archivo" VisibleIndex="15">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="SITIO ARCHIVO"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="acceso_documento" VisibleIndex="16">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="ACCESO DOCUMENTO"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="archivo_local" VisibleIndex="17" 
                            Caption="ARCHIVO LOCAL">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="archivo_central" VisibleIndex="18" 
                            Caption="ARCHIVO CENTRAL">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="disposicion_final" VisibleIndex="19" 
                            Caption="DISP. FINAL">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="sgd" VisibleIndex="20" Caption="SGD">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn Caption="ELABORACION" FieldName="est_elaboracion" 
                            VisibleIndex="21">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                                <Style Wrap="True">
                                </Style>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="CORRECCION" FieldName="est_correccion" 
                            VisibleIndex="22">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="REVISION" FieldName="est_revision" 
                            VisibleIndex="23">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="APROBACION" FieldName="est_aprobacion" 
                            VisibleIndex="25">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="DIFUSION" FieldName="est_difusion" 
                            VisibleIndex="27">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="APLICACION" FieldName="est_aplicacion" 
                            VisibleIndex="29">
                            <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesCheckEdit>
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="observaciones" VisibleIndex="31">
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <PropertiesTextEdit>
                                <ValidationSettings ErrorText="Valor inválido">
                                    <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                </ValidationSettings>
                            </PropertiesTextEdit>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="OBSERVACIONES"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="url_documento" VisibleIndex="33" 
                            Caption="url_documento">
<PropertiesTextEdit>
<ValidationSettings ErrorText="Valor inv&#225;lido">
<RegularExpression ErrorText="Fall&#243; la validaci&#243;n de expresi&#243;n Regular"></RegularExpression>
</ValidationSettings>
</PropertiesTextEdit>
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td colspan="2">
                                            <dx:ASPxTextBox ID="ASPxTextBox_ruta" runat="server" 
                                                Text='<%# Bind("url_documento") %>' Width="220px" Font-Bold="True" 
                                                ForeColor="Black" ReadOnly="True">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBIR" />
                                            <asp:Label ID="Label_noti" runat="server" Font-Bold="True" ForeColor="#003366" 
                                                Text="."></asp:Label>
                                        </td>
                                        <td style="text-align: right">
                                            <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" 
                                                BackColor="#94B6E8" Height="0px" ShowClearFileSelectionButton="False" 
                                                Width="1px">
                                                <ValidationSettings FileDoesNotExistErrorText="La archivo a cargar no existe" 
                                                    GeneralErrorText="La carga del archivo falla debido a un error externo que no está relacionado con la funcionalidad del control." 
                                                    MaxFileSizeErrorText="El tamaño del archivo excede el tamaño máximo permitido, que es {0} bytes" 
                                                    NotAllowedContentTypeErrorText="Este tipo de contenido no está permitido" 
                                                    NotAllowedFileExtensionErrorText="Esta extensión de archivo no está permitida">
                                                </ValidationSettings>
                                                <BrowseButton Text="">
                                                </BrowseButton>
                                                <CancelButton Text=".">
                                                </CancelButton>
                                                <ProgressBarSettings ShowPosition="False" />
                                                <TextBoxStyle BackColor="#94B6E8">
                                                <Border BorderColor="#94B6E8" BorderStyle="None" />
                                                </TextBoxStyle>
                                                <BrowseButtonStyle BackColor="#94B6E8" ForeColor="#94B6E8">
                                                    <BorderBottom BorderStyle="None" />
                                                    <Border BorderColor="#94B6E8" />
                                                </BrowseButtonStyle>
                                                <ButtonStyle BackColor="#94B6E8" ForeColor="#94B6E8">
                                                    <BorderBottom BorderStyle="None" />
                                                    <Border BorderColor="#94B6E8" />
                                                </ButtonStyle>
                                                <Border BorderColor="#94B6E8" BorderStyle="None" />
                                                <BorderRight BorderStyle="None" />
                                                <BorderBottom BorderStyle="None" />
                                                <DisabledStyle BackColor="#C1D7F8">
                                                </DisabledStyle>
                                            </dx:ASPxUploadControl>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewBandColumn Caption="DOCUMENTO" VisibleIndex="11">
                            <Columns>
                                <dx:GridViewDataCheckColumn Caption="MAGNETICO" FieldName="doc_magenetico" 
                                    VisibleIndex="0">
                                    <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                    </PropertiesCheckEdit>
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataCheckColumn Caption="IMPRESO" FieldName="doc_impreso" 
                                    VisibleIndex="1">
                                    <PropertiesCheckEdit DisplayTextChecked="Sí" DisplayTextUnchecked="No">
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                    </PropertiesCheckEdit>
                                </dx:GridViewDataCheckColumn>
                            </Columns>
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="DOCUMENTO"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewBandColumn>
                        <dx:GridViewBandColumn Caption="CODIGO" VisibleIndex="5">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="PRINCIPAL" FieldName="codigo_pri" 
                                    VisibleIndex="0">
                                    <PropertiesTextEdit>
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                        <Style CssClass="vertical">
                                        </Style>
                                    </PropertiesTextEdit>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox_principal" runat="server" 
                                            Text='<%# Bind("codigo_pri") %>' Width="60px"></asp:TextBox>
                                    </EditItemTemplate>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="UNIDAD" FieldName="codigo_unidad" 
                                    VisibleIndex="1">
                                    <PropertiesTextEdit>
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                    </PropertiesTextEdit>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList_unidad" runat="server" 
                                            SelectedValue='<%# Bind("codigo_unidad") %>'>
                                            <asp:ListItem>CAL</asp:ListItem>
                                            <asp:ListItem>ASI</asp:ListItem>
                                            <asp:ListItem>CIR</asp:ListItem>
                                            <asp:ListItem>NIN</asp:ListItem>
                                            <asp:ListItem>URG</asp:ListItem>
                                            <asp:ListItem>FAC</asp:ListItem>
                                            <asp:ListItem>FIN</asp:ListItem>
                                            <asp:ListItem>TER</asp:ListItem>
                                            <asp:ListItem>LAB</asp:ListItem>
                                            <asp:ListItem>FAR</asp:ListItem>
                                            <asp:ListItem>SIS</asp:ListItem>
                                            <asp:ListItem>GES</asp:ListItem>
                                            <asp:ListItem>ADU</asp:ListItem>
                                            <asp:ListItem>JOV</asp:ListItem>
                                            <asp:ListItem>ODO</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="TIPO" FieldName="codigo_tipo" 
                                    VisibleIndex="2">
                                    <PropertiesTextEdit>
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                    </PropertiesTextEdit>
                                    <Settings AutoFilterCondition="Contains" FilterMode="DisplayText" 
                                        ShowFilterRowMenu="True" ShowInFilterControl="True" />
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList_tipo" runat="server" 
                                            SelectedValue='<%# Bind("codigo_tipo") %>'>
                                            <asp:ListItem>FOR</asp:ListItem>
                                            <asp:ListItem>POE</asp:ListItem>
                                            <asp:ListItem>PRO</asp:ListItem>
                                            <asp:ListItem>GUI</asp:ListItem>
                                            <asp:ListItem>MAN</asp:ListItem>
                                            <asp:ListItem>ESP</asp:ListItem>
                                            <asp:ListItem>INS</asp:ListItem>
                                            <asp:ListItem>FTT</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="NUMERO" FieldName="codigo_numero" 
                                    VisibleIndex="3">
                                    <PropertiesTextEdit>
                                        <ValidationSettings ErrorText="Valor inválido">
                                            <RegularExpression ErrorText="Falló la validación de expresión Regular" />
                                        </ValidationSettings>
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <HeaderStyle HorizontalAlign="Center" />
                            <HeaderTemplate>
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                                    Text="CODIGO"></asp:Label>
                            </HeaderTemplate>
                        </dx:GridViewBandColumn>
                    </Columns>

                    <SettingsPager Mode="ShowAllRecords">
                    </SettingsPager>

                    <SettingsEditing Mode="Inline" />
                    <Settings ShowFilterRow="True" />

<SettingsLoadingPanel Text="Cargando&amp;hellip;"></SettingsLoadingPanel>

                    <Images SpriteCssFilePath="~/App_Themes/Office2003Blue/{0}/sprite.css">
                        <LoadingPanelOnStatusBar Url="~/App_Themes/Office2003Blue/GridView/gvLoadingOnStatusBar.gif">
                        </LoadingPanelOnStatusBar>
                        <LoadingPanel Url="~/App_Themes/Office2003Blue/GridView/Loading.gif">
                        </LoadingPanel>
                    </Images>
                    <ImagesFilterControl>
                        <LoadingPanel Url="~/App_Themes/Office2003Blue/Editors/Loading.gif">
                        </LoadingPanel>
                    </ImagesFilterControl>
                    <Styles CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                        CssPostfix="Office2003Blue">
                        <Header ImageSpacing="5px" SortingImageSpacing="5px">
                        </Header>
                        <LoadingPanel ImageSpacing="10px">
                        </LoadingPanel>
                    </Styles>
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>

                    <Templates>
                    <HeaderCaption>
                        <div class="verticalHeader"><%# Container.DataItem %></div>
                    </HeaderCaption>
                </Templates>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="SqlDataSource_listado" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:visualnetConnectionString %>" 
                    DeleteCommand="DELETE FROM [sgd_listado_maestro] WHERE [id_sgd] = @original_id_sgd AND (([codigo_pri] = @original_codigo_pri) OR ([codigo_pri] IS NULL AND @original_codigo_pri IS NULL)) AND (([codigo_unidad] = @original_codigo_unidad) OR ([codigo_unidad] IS NULL AND @original_codigo_unidad IS NULL)) AND (([codigo_tipo] = @original_codigo_tipo) OR ([codigo_tipo] IS NULL AND @original_codigo_tipo IS NULL)) AND (([codigo_numero] = @original_codigo_numero) OR ([codigo_numero] IS NULL AND @original_codigo_numero IS NULL)) AND (([titulo_formato] = @original_titulo_formato) OR ([titulo_formato] IS NULL AND @original_titulo_formato IS NULL)) AND (([version] = @original_version) OR ([version] IS NULL AND @original_version IS NULL)) AND (([fecha_emision] = @original_fecha_emision) OR ([fecha_emision] IS NULL AND @original_fecha_emision IS NULL)) AND (([unidad] = @original_unidad) OR ([unidad] IS NULL AND @original_unidad IS NULL)) AND (([area] = @original_area) OR ([area] IS NULL AND @original_area IS NULL)) AND (([doc_magenetico] = @original_doc_magenetico) OR ([doc_magenetico] IS NULL AND @original_doc_magenetico IS NULL)) AND (([doc_impreso] = @original_doc_impreso) OR ([doc_impreso] IS NULL AND @original_doc_impreso IS NULL)) AND (([interno] = @original_interno) OR ([interno] IS NULL AND @original_interno IS NULL)) AND (([externo] = @original_externo) OR ([externo] IS NULL AND @original_externo IS NULL)) AND (([sitio_archivo] = @original_sitio_archivo) OR ([sitio_archivo] IS NULL AND @original_sitio_archivo IS NULL)) AND (([acceso_documento] = @original_acceso_documento) OR ([acceso_documento] IS NULL AND @original_acceso_documento IS NULL)) AND (([archivo_local] = @original_archivo_local) OR ([archivo_local] IS NULL AND @original_archivo_local IS NULL)) AND (([archivo_central] = @original_archivo_central) OR ([archivo_central] IS NULL AND @original_archivo_central IS NULL)) AND (([disposicion_final] = @original_disposicion_final) OR ([disposicion_final] IS NULL AND @original_disposicion_final IS NULL)) AND (([sgd] = @original_sgd) OR ([sgd] IS NULL AND @original_sgd IS NULL)) AND (([est_elaboracion] = @original_est_elaboracion) OR ([est_elaboracion] IS NULL AND @original_est_elaboracion IS NULL)) AND (([est_correccion] = @original_est_correccion) OR ([est_correccion] IS NULL AND @original_est_correccion IS NULL)) AND (([est_revision] = @original_est_revision) OR ([est_revision] IS NULL AND @original_est_revision IS NULL)) AND (([est_aprobacion] = @original_est_aprobacion) OR ([est_aprobacion] IS NULL AND @original_est_aprobacion IS NULL)) AND (([est_difusion] = @original_est_difusion) OR ([est_difusion] IS NULL AND @original_est_difusion IS NULL)) AND (([est_aplicacion] = @original_est_aplicacion) OR ([est_aplicacion] IS NULL AND @original_est_aplicacion IS NULL)) AND (([observaciones] = @original_observaciones) OR ([observaciones] IS NULL AND @original_observaciones IS NULL)) AND (([url_documento] = @original_url_documento) OR ([url_documento] IS NULL AND @original_url_documento IS NULL))" 
                    InsertCommand="INSERT INTO [sgd_listado_maestro] ([codigo_pri], [codigo_unidad], [codigo_tipo], [codigo_numero], [titulo_formato], [version], [fecha_emision], [unidad], [area], [doc_magenetico], [doc_impreso], [interno], [externo], [sitio_archivo], [acceso_documento], [archivo_local], [archivo_central], [disposicion_final], [sgd], [est_elaboracion], [est_correccion], [est_revision], [est_aprobacion], [est_difusion], [est_aplicacion], [observaciones], [url_documento]) VALUES (@codigo_pri, @codigo_unidad, @codigo_tipo, @codigo_numero, @titulo_formato, @version, @fecha_emision, @unidad, @area, @doc_magenetico, @doc_impreso, @interno, @externo, @sitio_archivo, @acceso_documento, @archivo_local, @archivo_central, @disposicion_final, @sgd, @est_elaboracion, @est_correccion, @est_revision, @est_aprobacion, @est_difusion, @est_aplicacion, @observaciones, @url_documento)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [sgd_listado_maestro] ORDER BY [codigo_unidad]" 
                    UpdateCommand="UPDATE [sgd_listado_maestro] SET [codigo_pri] = @codigo_pri, [codigo_unidad] = @codigo_unidad, [codigo_tipo] = @codigo_tipo, [codigo_numero] = @codigo_numero, [titulo_formato] = @titulo_formato, [version] = @version, [fecha_emision] = @fecha_emision, [unidad] = @unidad, [area] = @area, [doc_magenetico] = @doc_magenetico, [doc_impreso] = @doc_impreso, [interno] = @interno, [externo] = @externo, [sitio_archivo] = @sitio_archivo, [acceso_documento] = @acceso_documento, [archivo_local] = @archivo_local, [archivo_central] = @archivo_central, [disposicion_final] = @disposicion_final, [sgd] = @sgd, [est_elaboracion] = @est_elaboracion, [est_correccion] = @est_correccion, [est_revision] = @est_revision, [est_aprobacion] = @est_aprobacion, [est_difusion] = @est_difusion, [est_aplicacion] = @est_aplicacion, [observaciones] = @observaciones, [url_documento] = @url_documento WHERE [id_sgd] = @original_id_sgd AND (([codigo_pri] = @original_codigo_pri) OR ([codigo_pri] IS NULL AND @original_codigo_pri IS NULL)) AND (([codigo_unidad] = @original_codigo_unidad) OR ([codigo_unidad] IS NULL AND @original_codigo_unidad IS NULL)) AND (([codigo_tipo] = @original_codigo_tipo) OR ([codigo_tipo] IS NULL AND @original_codigo_tipo IS NULL)) AND (([codigo_numero] = @original_codigo_numero) OR ([codigo_numero] IS NULL AND @original_codigo_numero IS NULL)) AND (([titulo_formato] = @original_titulo_formato) OR ([titulo_formato] IS NULL AND @original_titulo_formato IS NULL)) AND (([version] = @original_version) OR ([version] IS NULL AND @original_version IS NULL)) AND (([fecha_emision] = @original_fecha_emision) OR ([fecha_emision] IS NULL AND @original_fecha_emision IS NULL)) AND (([unidad] = @original_unidad) OR ([unidad] IS NULL AND @original_unidad IS NULL)) AND (([area] = @original_area) OR ([area] IS NULL AND @original_area IS NULL)) AND (([doc_magenetico] = @original_doc_magenetico) OR ([doc_magenetico] IS NULL AND @original_doc_magenetico IS NULL)) AND (([doc_impreso] = @original_doc_impreso) OR ([doc_impreso] IS NULL AND @original_doc_impreso IS NULL)) AND (([interno] = @original_interno) OR ([interno] IS NULL AND @original_interno IS NULL)) AND (([externo] = @original_externo) OR ([externo] IS NULL AND @original_externo IS NULL)) AND (([sitio_archivo] = @original_sitio_archivo) OR ([sitio_archivo] IS NULL AND @original_sitio_archivo IS NULL)) AND (([acceso_documento] = @original_acceso_documento) OR ([acceso_documento] IS NULL AND @original_acceso_documento IS NULL)) AND (([archivo_local] = @original_archivo_local) OR ([archivo_local] IS NULL AND @original_archivo_local IS NULL)) AND (([archivo_central] = @original_archivo_central) OR ([archivo_central] IS NULL AND @original_archivo_central IS NULL)) AND (([disposicion_final] = @original_disposicion_final) OR ([disposicion_final] IS NULL AND @original_disposicion_final IS NULL)) AND (([sgd] = @original_sgd) OR ([sgd] IS NULL AND @original_sgd IS NULL)) AND (([est_elaboracion] = @original_est_elaboracion) OR ([est_elaboracion] IS NULL AND @original_est_elaboracion IS NULL)) AND (([est_correccion] = @original_est_correccion) OR ([est_correccion] IS NULL AND @original_est_correccion IS NULL)) AND (([est_revision] = @original_est_revision) OR ([est_revision] IS NULL AND @original_est_revision IS NULL)) AND (([est_aprobacion] = @original_est_aprobacion) OR ([est_aprobacion] IS NULL AND @original_est_aprobacion IS NULL)) AND (([est_difusion] = @original_est_difusion) OR ([est_difusion] IS NULL AND @original_est_difusion IS NULL)) AND (([est_aplicacion] = @original_est_aplicacion) OR ([est_aplicacion] IS NULL AND @original_est_aplicacion IS NULL)) AND (([observaciones] = @original_observaciones) OR ([observaciones] IS NULL AND @original_observaciones IS NULL)) AND (([url_documento] = @original_url_documento) OR ([url_documento] IS NULL AND @original_url_documento IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id_sgd" Type="Int32" />
                        <asp:Parameter Name="original_codigo_pri" Type="String" />
                        <asp:Parameter Name="original_codigo_unidad" Type="String" />
                        <asp:Parameter Name="original_codigo_tipo" Type="String" />
                        <asp:Parameter Name="original_codigo_numero" Type="String" />
                        <asp:Parameter Name="original_titulo_formato" Type="String" />
                        <asp:Parameter Name="original_version" Type="Int32" />
                        <asp:Parameter Name="original_fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="original_unidad" Type="String" />
                        <asp:Parameter Name="original_area" Type="String" />
                        <asp:Parameter Name="original_doc_magenetico" Type="Int64" />
                        <asp:Parameter Name="original_doc_impreso" Type="Int64" />
                        <asp:Parameter Name="original_interno" Type="Int64" />
                        <asp:Parameter Name="original_externo" Type="Int64" />
                        <asp:Parameter Name="original_sitio_archivo" Type="String" />
                        <asp:Parameter Name="original_acceso_documento" Type="String" />
                        <asp:Parameter Name="original_archivo_local" Type="Int32" />
                        <asp:Parameter Name="original_archivo_central" Type="Int32" />
                        <asp:Parameter Name="original_disposicion_final" Type="String" />
                        <asp:Parameter Name="original_sgd" Type="String" />
                        <asp:Parameter Name="original_est_elaboracion" Type="Int64" />
                        <asp:Parameter Name="original_est_correccion" Type="Int64" />
                        <asp:Parameter Name="original_est_revision" Type="Int64" />
                        <asp:Parameter Name="original_est_aprobacion" Type="Int64" />
                        <asp:Parameter Name="original_est_difusion" Type="Int64" />
                        <asp:Parameter Name="original_est_aplicacion" Type="Int64" />
                        <asp:Parameter Name="original_observaciones" Type="String" />
                        <asp:Parameter Name="original_url_documento" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codigo_pri" Type="String" />
                        <asp:Parameter Name="codigo_unidad" Type="String" />
                        <asp:Parameter Name="codigo_tipo" Type="String" />
                        <asp:Parameter Name="codigo_numero" Type="String" />
                        <asp:Parameter Name="titulo_formato" Type="String" />
                        <asp:Parameter Name="version" Type="Int32" />
                        <asp:Parameter Name="fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="unidad" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="doc_magenetico" Type="Int64" />
                        <asp:Parameter Name="doc_impreso" Type="Int64" />
                        <asp:Parameter Name="interno" Type="Int64" />
                        <asp:Parameter Name="externo" Type="Int64" />
                        <asp:Parameter Name="sitio_archivo" Type="String" />
                        <asp:Parameter Name="acceso_documento" Type="String" />
                        <asp:Parameter Name="archivo_local" Type="Int32" />
                        <asp:Parameter Name="archivo_central" Type="Int32" />
                        <asp:Parameter Name="disposicion_final" Type="String" />
                        <asp:Parameter Name="sgd" Type="String" />
                        <asp:Parameter Name="est_elaboracion" Type="Int64" />
                        <asp:Parameter Name="est_correccion" Type="Int64" />
                        <asp:Parameter Name="est_revision" Type="Int64" />
                        <asp:Parameter Name="est_aprobacion" Type="Int64" />
                        <asp:Parameter Name="est_difusion" Type="Int64" />
                        <asp:Parameter Name="est_aplicacion" Type="Int64" />
                        <asp:Parameter Name="observaciones" Type="String" />
                        <asp:Parameter Name="url_documento" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="codigo_pri" Type="String" />
                        <asp:Parameter Name="codigo_unidad" Type="String" />
                        <asp:Parameter Name="codigo_tipo" Type="String" />
                        <asp:Parameter Name="codigo_numero" Type="String" />
                        <asp:Parameter Name="titulo_formato" Type="String" />
                        <asp:Parameter Name="version" Type="Int32" />
                        <asp:Parameter Name="fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="unidad" Type="String" />
                        <asp:Parameter Name="area" Type="String" />
                        <asp:Parameter Name="doc_magenetico" Type="Int64" />
                        <asp:Parameter Name="doc_impreso" Type="Int64" />
                        <asp:Parameter Name="interno" Type="Int64" />
                        <asp:Parameter Name="externo" Type="Int64" />
                        <asp:Parameter Name="sitio_archivo" Type="String" />
                        <asp:Parameter Name="acceso_documento" Type="String" />
                        <asp:Parameter Name="archivo_local" Type="Int32" />
                        <asp:Parameter Name="archivo_central" Type="Int32" />
                        <asp:Parameter Name="disposicion_final" Type="String" />
                        <asp:Parameter Name="sgd" Type="String" />
                        <asp:Parameter Name="est_elaboracion" Type="Int64" />
                        <asp:Parameter Name="est_correccion" Type="Int64" />
                        <asp:Parameter Name="est_revision" Type="Int64" />
                        <asp:Parameter Name="est_aprobacion" Type="Int64" />
                        <asp:Parameter Name="est_difusion" Type="Int64" />
                        <asp:Parameter Name="est_aplicacion" Type="Int64" />
                        <asp:Parameter Name="observaciones" Type="String" />
                        <asp:Parameter Name="url_documento" Type="String" />
                        <asp:Parameter Name="original_id_sgd" Type="Int32" />
                        <asp:Parameter Name="original_codigo_pri" Type="String" />
                        <asp:Parameter Name="original_codigo_unidad" Type="String" />
                        <asp:Parameter Name="original_codigo_tipo" Type="String" />
                        <asp:Parameter Name="original_codigo_numero" Type="String" />
                        <asp:Parameter Name="original_titulo_formato" Type="String" />
                        <asp:Parameter Name="original_version" Type="Int32" />
                        <asp:Parameter Name="original_fecha_emision" Type="DateTime" />
                        <asp:Parameter Name="original_unidad" Type="String" />
                        <asp:Parameter Name="original_area" Type="String" />
                        <asp:Parameter Name="original_doc_magenetico" Type="Int64" />
                        <asp:Parameter Name="original_doc_impreso" Type="Int64" />
                        <asp:Parameter Name="original_interno" Type="Int64" />
                        <asp:Parameter Name="original_externo" Type="Int64" />
                        <asp:Parameter Name="original_sitio_archivo" Type="String" />
                        <asp:Parameter Name="original_acceso_documento" Type="String" />
                        <asp:Parameter Name="original_archivo_local" Type="Int32" />
                        <asp:Parameter Name="original_archivo_central" Type="Int32" />
                        <asp:Parameter Name="original_disposicion_final" Type="String" />
                        <asp:Parameter Name="original_sgd" Type="String" />
                        <asp:Parameter Name="original_est_elaboracion" Type="Int64" />
                        <asp:Parameter Name="original_est_correccion" Type="Int64" />
                        <asp:Parameter Name="original_est_revision" Type="Int64" />
                        <asp:Parameter Name="original_est_aprobacion" Type="Int64" />
                        <asp:Parameter Name="original_est_difusion" Type="Int64" />
                        <asp:Parameter Name="original_est_aplicacion" Type="Int64" />
                        <asp:Parameter Name="original_observaciones" Type="String" />
                        <asp:Parameter Name="original_url_documento" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>