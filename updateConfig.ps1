$source = ".\TourismWeb\Web.config"
$doc = (Get-Content $source) -as [Xml]
$test = $doc.Configuration.AppSettings.Add | where {$_.Key -eq "test.enable"}
$test.Value = "false"
$doc.Save($source)