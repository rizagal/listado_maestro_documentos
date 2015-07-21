Imports System.IO
Imports System.Configuration
Imports System.Web
Imports System.Web.Services
Imports System.Windows
Imports Microsoft.VisualBasic
Imports System
Imports System.Web.UI
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors
Imports System.Data.SqlClient
Imports System.Data
Imports System.Data.Common
Imports System.Data.OleDb
Imports System.Data.Odbc
Imports DevExpress.Web.ASPxUploadControl

Partial Class _Default1
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As System.EventArgs)

        Dim txt_ruta As ASPxTextBox = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns(22), GridViewDataColumn), "ASPxTextBox_ruta"), ASPxTextBox)
        Dim txt4 As FileUpload = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns(22), GridViewDataColumn), "FileUpload1"), FileUpload)
        Dim label_not As Label = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns(22), GridViewDataColumn), "Label_noti"), Label)


        If txt4.FileName = "" Then
            label_not.Text = "DEBE SELECCIONAR PRIMERO EL ARCHIVO"
        Else

            txt_ruta.Text = txt4.FileName

            If Not Directory.Exists("H:\INDICADORES ESELADERA\TRD\" & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("TIPO"), GridViewDataColumn), "DropDownList_tipo"), DropDownList).Text & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("UNIDAD"), GridViewDataColumn), "DropDownList_unidad"), DropDownList).Text) Then
                Directory.CreateDirectory("H:\INDICADORES ESELADERA\TRD\" & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("TIPO"), GridViewDataColumn), "DropDownList_tipo"), DropDownList).Text & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("UNIDAD"), GridViewDataColumn), "DropDownList_unidad"), DropDownList).Text)
            End If

            Dim archivo As String = Path.GetFileName(txt4.PostedFile.FileName)
            Dim fileLocation As String = Server.MapPath("INDICA\TRD\" & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("TIPO"), GridViewDataColumn), "DropDownList_tipo"), DropDownList).Text & "\" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("UNIDAD"), GridViewDataColumn), "DropDownList_unidad"), DropDownList).Text & "\" & archivo)
            txt4.SaveAs(fileLocation)
            label_not.Text = "Por Favor Actualice para Guardar la Ruta del Archivo que se subio"
        End If

        'De la Siguiente forma subo el archivo en modo diseño, me sirve para ser pruebas
        'txt4.SaveAs(Server.MapPath("~/Styles/") & "\" & System.IO.Path.GetFileName(txt4.FileName))
    End Sub

    '---NOTA IMPORTANTE - Para poder que me funcione el fileupload dentro del aspxgridview tengo que tener estas tres lineas
    '---Tambien el control ASPxUploadControl1(hay que dejarlo visible pero personalizar en el estilo para que no se vea) debe estar junto con el fileupload
    Protected Sub ASPxUploadControl1_FileUploadComplete(sender As Object, e As DevExpress.Web.ASPxUploadControl.FileUploadCompleteEventArgs)
        Dim txt_ruta As ASPxTextBox = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns(22), GridViewDataColumn), "ASPxTextBox_ruta"), ASPxTextBox)
    End Sub


    Protected Sub ASPxButton1_Click1(sender As Object, e As System.EventArgs)
        Dim txt_ruta As ASPxTextBox = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns(22), GridViewDataColumn), "ASPxTextBox_ruta"), ASPxTextBox)

        'NOTA: Para identificar el numero de columna se basa uno con el dato de VISIBLEINDEX, 
        'Utilizo Dropdownlist para traer el dato, con aspxcombobox no pude por ahora
        'Tambien utilizo el Nombre de la Columna en vez de el Numero, tambien se me complico


        Dim url As String = "http://192.168.5.155/" & "INDICA" & "/TRD/" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("TIPO"), GridViewDataColumn), "DropDownList_tipo"), DropDownList).Text & "/" & CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("UNIDAD"), GridViewDataColumn), "DropDownList_unidad"), DropDownList).Text & "/" & Trim(txt_ruta.Text)
        Dim s As String = "window.open('" & url + "', 'popup_window', 'width=700,height=850,left=200,top=50,resizable=yes');"
        ClientScript.RegisterStartupScript(Me.GetType(), "script", s, True)
    End Sub

    Protected Sub ASPxGridView1_HtmlEditFormCreated(sender As Object, e As DevExpress.Web.ASPxGridView.ASPxGridViewEditFormEventArgs) Handles ASPxGridView1.HtmlEditFormCreated
        Dim tipo_list As DropDownList = CType(ASPxGridView1.FindEditRowCellTemplateControl(CType(ASPxGridView1.Columns("TIPO"), GridViewDataColumn), "DropDownList_tipo"), DropDownList)
        tipo_list.Enabled = False
    End Sub

    Protected Sub ASPxGridView1_StartRowEditing(sender As Object, e As DevExpress.Web.Data.ASPxStartRowEditingEventArgs) Handles ASPxGridView1.StartRowEditing
      
    End Sub
End Class
