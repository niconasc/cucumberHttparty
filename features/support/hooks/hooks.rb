After do |scenario|
  embed "O codigo de retorno e: #{$resultCode} <br> Para o retorno: #{$result}", "text/html"
end

at_exit do
  inputFile = 'log/report/final_report.json'
  utils = Utils.new
  
  if (File.file?(inputFile))
    ReportBuilder.configure do |config|
      # puts utils.dateTime
      config.input_path = inputFile
      config.html_report_path = "log/report/final_report_#{utils.dateTime}"
      config.report_path = "test_report"
      config.report_types = [:html]
      config.report_title = "Execução Automática"
      config.color = "amber"
      config.additional_info = { Serviço: "Rest", Ambiente: "QA" }
    end

    ReportBuilder.build_report
  end
end
