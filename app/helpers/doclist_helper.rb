module DoclistHelper
  def select_export_formats(doc_type, export_link)
    url_list = {}
    case doc_type
      when ApplicationController::DOCUMENT_DOC_TYPE
        url_list['doc'] = export_link + '&exportFormat=doc'
        url_list['html'] = export_link + '&exportFormat=html'
        url_list['odt'] = export_link + '&exportFormat=odt'
        url_list['pdf'] = export_link + '&exportFormat=pdf'
        url_list['png'] = export_link + '&exportFormat=png'
        url_list['rtf'] = export_link + '&exportFormat=rtf'
        url_list['txt'] = export_link + '&exportFormat=txt'
        url_list['zip'] = export_link + '&exportFormat=zip'
      when ApplicationController::PRESO_DOC_TYPE
        url_list['pdf'] = export_link + '&exportFormat=pdf'
        url_list['png'] = export_link + '&exportFormat=png'
        url_list['ppt'] = export_link + '&exportFormat=ppt'
        url_list['swf'] = export_link + '&exportFormat=swf'
        url_list['txt'] = export_link + '&exportFormat=txt'
      when ApplicationController::SPREADSHEET_DOC_TYPE
        url_list['csv'] = export_link + '&exportFormat=csv&gid=0'
        url_list['html'] = export_link + '&exportFormat=html'
        url_list['ods'] = export_link + '&exportFormat=ods'
        url_list['pdf'] = export_link + '&exportFormat=pdf'
        url_list['tsv'] = export_link + '&exportFormat=tsv&gid=0'
        url_list['xls'] = export_link + '&exportFormat=xls'
      when ApplicationController::PDF_DOC_TYPE
        url_list['pdf'] = export_link
      else
        return
    end
    return select_tag('export_url', options_for_select(url_list))
  end
end
