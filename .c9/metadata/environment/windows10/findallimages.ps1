{"changed":true,"filter":false,"title":"findallimages.ps1","tooltip":"/windows10/findallimages.ps1","value":"$Folder = 'C:\\images'\nif (-Not(Test-Path -Path $Folder)) {\n    New-Item -Path 'c:\\images' -ItemType Directory\n}\nGet-ChildItem -Recurse c:\\Users $originalPath -Include @(\"*.png\", \"*.jpg\", \"*.gif\", \"*.webp\", \"*.tiff\", \"*.psd\", \"*.raw\", \"*.txt\", \"*.bmp\", \"*.heif\", \"*.pdf\", \"*.mp3\", \"*.ogg\", \"*.wav\", \"*.aif\", \"*.7z\", \"*.tar.gz\", \"*.deb\", \"*.pkg\", \"*.rar\", \"*.zip\", \"*.iso\", \"*.mp4\", \"*.mpg\", \"*.h264\", \"*.mov\", \"*.mkv\", \"*.avi\", \"*.doc\", \"*.docx\", \"*.ppt\", \"*.pptx\", \"*.html\")  | % {\n    $image = [System.Drawing.Image]::FromFile($_.FullName)\n    if ($image.width -gt 0 -and $image.height -gt 0) {\n        New-Object PSObject -Property @{\n\t\theight_pixels = $image.Height\n\t\twidth_pixels = $image.Width\n\t\tmegapixels = ($image.Height * $image.Width)/1000/1000\n\t\tmegabytes = (($_.Length)/1024)/1024\n\t\tname = $_.Name\n\t\tfullname = $_.Fullname\n\t\tdate = $_.LastWriteTime\n        }\n    }\n} | Export-Csv 'c:\\images\\img.csv' -NoTypeInformation\n","undoManager":{"mark":-160,"position":100,"stack":[[{"start":{"row":4,"column":187},"end":{"row":4,"column":188},"action":"insert","lines":["*"],"id":159,"ignore":true}],[{"start":{"row":4,"column":188},"end":{"row":4,"column":192},"action":"insert","lines":[".aif"],"id":160,"ignore":true}],[{"start":{"row":4,"column":193},"end":{"row":4,"column":195},"action":"insert","lines":[", "],"id":161,"ignore":true}],[{"start":{"row":4,"column":195},"end":{"row":4,"column":198},"action":"insert","lines":["\"*\""],"id":162,"ignore":true}],[{"start":{"row":5,"column":58},"end":{"row":5,"column":61},"action":"insert","lines":[".7z"],"id":163,"ignore":true}],[{"start":{"row":5,"column":58},"end":{"row":5,"column":61},"action":"remove","lines":[".7z"],"id":164,"ignore":true}],[{"start":{"row":4,"column":197},"end":{"row":4,"column":200},"action":"insert","lines":[".7z"],"id":165,"ignore":true}],[{"start":{"row":4,"column":201},"end":{"row":4,"column":203},"action":"insert","lines":[", "],"id":166,"ignore":true}],[{"start":{"row":4,"column":203},"end":{"row":4,"column":204},"action":"insert","lines":["*"],"id":167,"ignore":true}],[{"start":{"row":4,"column":203},"end":{"row":4,"column":204},"action":"remove","lines":["*"],"id":168,"ignore":true}],[{"start":{"row":4,"column":203},"end":{"row":4,"column":206},"action":"insert","lines":["\"*\""],"id":169,"ignore":true}],[{"start":{"row":4,"column":205},"end":{"row":4,"column":209},"action":"insert","lines":[".tar"],"id":170,"ignore":true}],[{"start":{"row":4,"column":209},"end":{"row":4,"column":212},"action":"insert","lines":[".gz"],"id":171,"ignore":true}],[{"start":{"row":4,"column":213},"end":{"row":4,"column":215},"action":"insert","lines":[", "],"id":172,"ignore":true}],[{"start":{"row":4,"column":215},"end":{"row":4,"column":216},"action":"insert","lines":["*"],"id":173,"ignore":true}],[{"start":{"row":4,"column":215},"end":{"row":4,"column":216},"action":"remove","lines":["*"],"id":174,"ignore":true}],[{"start":{"row":4,"column":215},"end":{"row":4,"column":218},"action":"insert","lines":["\"*\""],"id":175,"ignore":true}],[{"start":{"row":4,"column":217},"end":{"row":4,"column":220},"action":"insert","lines":[".de"],"id":176,"ignore":true}],[{"start":{"row":4,"column":220},"end":{"row":4,"column":221},"action":"insert","lines":["b"],"id":177,"ignore":true}],[{"start":{"row":4,"column":222},"end":{"row":4,"column":224},"action":"insert","lines":[", "],"id":178,"ignore":true}],[{"start":{"row":4,"column":224},"end":{"row":4,"column":226},"action":"insert","lines":["\"\""],"id":179,"ignore":true}],[{"start":{"row":4,"column":225},"end":{"row":4,"column":226},"action":"insert","lines":["@"],"id":180,"ignore":true}],[{"start":{"row":4,"column":225},"end":{"row":4,"column":226},"action":"remove","lines":["@"],"id":181,"ignore":true}],[{"start":{"row":4,"column":225},"end":{"row":4,"column":226},"action":"insert","lines":["*"],"id":182,"ignore":true}],[{"start":{"row":4,"column":226},"end":{"row":4,"column":227},"action":"insert","lines":["."],"id":183,"ignore":true}],[{"start":{"row":4,"column":227},"end":{"row":4,"column":230},"action":"insert","lines":["pkg"],"id":184,"ignore":true}],[{"start":{"row":4,"column":231},"end":{"row":4,"column":233},"action":"insert","lines":[", "],"id":185,"ignore":true}],[{"start":{"row":4,"column":233},"end":{"row":4,"column":235},"action":"insert","lines":["\"\""],"id":186,"ignore":true}],[{"start":{"row":4,"column":234},"end":{"row":4,"column":235},"action":"insert","lines":["*"],"id":187,"ignore":true}],[{"start":{"row":4,"column":235},"end":{"row":4,"column":236},"action":"insert","lines":["."],"id":188,"ignore":true}],[{"start":{"row":4,"column":236},"end":{"row":4,"column":239},"action":"insert","lines":["rar"],"id":189,"ignore":true}],[{"start":{"row":4,"column":240},"end":{"row":4,"column":242},"action":"insert","lines":[", "],"id":190,"ignore":true}],[{"start":{"row":4,"column":242},"end":{"row":4,"column":244},"action":"insert","lines":["\"\""],"id":191,"ignore":true}],[{"start":{"row":4,"column":243},"end":{"row":4,"column":244},"action":"insert","lines":["*"],"id":192,"ignore":true}],[{"start":{"row":4,"column":244},"end":{"row":4,"column":246},"action":"insert","lines":["zi"],"id":193,"ignore":true}],[{"start":{"row":4,"column":244},"end":{"row":4,"column":246},"action":"remove","lines":["zi"],"id":194,"ignore":true}],[{"start":{"row":4,"column":244},"end":{"row":4,"column":246},"action":"insert","lines":[".z"],"id":195,"ignore":true}],[{"start":{"row":4,"column":246},"end":{"row":4,"column":248},"action":"insert","lines":["ip"],"id":196,"ignore":true}],[{"start":{"row":4,"column":249},"end":{"row":4,"column":251},"action":"insert","lines":[", "],"id":197,"ignore":true}],[{"start":{"row":4,"column":251},"end":{"row":4,"column":254},"action":"insert","lines":["\"*\""],"id":198,"ignore":true}],[{"start":{"row":4,"column":253},"end":{"row":4,"column":257},"action":"insert","lines":[".iso"],"id":199,"ignore":true}],[{"start":{"row":4,"column":258},"end":{"row":4,"column":260},"action":"insert","lines":[", "],"id":200,"ignore":true}],[{"start":{"row":4,"column":260},"end":{"row":4,"column":263},"action":"insert","lines":["\"*\""],"id":201,"ignore":true}],[{"start":{"row":4,"column":262},"end":{"row":4,"column":263},"action":"insert","lines":["."],"id":202,"ignore":true}],[{"start":{"row":4,"column":263},"end":{"row":4,"column":266},"action":"insert","lines":["mp4"],"id":203,"ignore":true}],[{"start":{"row":4,"column":267},"end":{"row":4,"column":269},"action":"insert","lines":[", "],"id":204,"ignore":true}],[{"start":{"row":4,"column":269},"end":{"row":4,"column":272},"action":"insert","lines":["\"*\""],"id":205,"ignore":true}],[{"start":{"row":4,"column":271},"end":{"row":4,"column":272},"action":"insert","lines":[","],"id":206,"ignore":true}],[{"start":{"row":4,"column":271},"end":{"row":4,"column":272},"action":"remove","lines":[","],"id":207,"ignore":true},{"start":{"row":4,"column":271},"end":{"row":4,"column":272},"action":"insert","lines":["."]}],[{"start":{"row":4,"column":272},"end":{"row":4,"column":274},"action":"insert","lines":["mp"],"id":208,"ignore":true}],[{"start":{"row":4,"column":274},"end":{"row":4,"column":275},"action":"insert","lines":["g"],"id":209,"ignore":true}],[{"start":{"row":4,"column":276},"end":{"row":4,"column":278},"action":"insert","lines":[". "],"id":210,"ignore":true}],[{"start":{"row":4,"column":277},"end":{"row":4,"column":278},"action":"remove","lines":[" "],"id":211,"ignore":true}],[{"start":{"row":4,"column":276},"end":{"row":4,"column":277},"action":"remove","lines":["."],"id":212,"ignore":true}],[{"start":{"row":4,"column":276},"end":{"row":4,"column":277},"action":"insert","lines":[","],"id":213,"ignore":true}],[{"start":{"row":4,"column":277},"end":{"row":4,"column":280},"action":"insert","lines":[" \"\""],"id":214,"ignore":true}],[{"start":{"row":4,"column":279},"end":{"row":4,"column":280},"action":"insert","lines":["*"],"id":215,"ignore":true}],[{"start":{"row":4,"column":280},"end":{"row":4,"column":281},"action":"insert","lines":["."],"id":216,"ignore":true}],[{"start":{"row":4,"column":281},"end":{"row":4,"column":282},"action":"insert","lines":["h"],"id":217,"ignore":true}],[{"start":{"row":4,"column":282},"end":{"row":4,"column":285},"action":"insert","lines":["264"],"id":218,"ignore":true}],[{"start":{"row":4,"column":286},"end":{"row":4,"column":288},"action":"insert","lines":[", "],"id":219,"ignore":true}],[{"start":{"row":4,"column":288},"end":{"row":4,"column":290},"action":"insert","lines":["\"\""],"id":220,"ignore":true}],[{"start":{"row":4,"column":289},"end":{"row":4,"column":290},"action":"insert","lines":["*"],"id":221,"ignore":true}],[{"start":{"row":4,"column":290},"end":{"row":4,"column":293},"action":"insert","lines":["mov"],"id":222,"ignore":true}],[{"start":{"row":4,"column":294},"end":{"row":4,"column":296},"action":"insert","lines":[", "],"id":223,"ignore":true}],[{"start":{"row":4,"column":296},"end":{"row":4,"column":298},"action":"insert","lines":["\"\""],"id":224,"ignore":true}],[{"start":{"row":4,"column":297},"end":{"row":4,"column":298},"action":"insert","lines":["*"],"id":225,"ignore":true}],[{"start":{"row":4,"column":298},"end":{"row":4,"column":301},"action":"insert","lines":["mkv"],"id":226,"ignore":true}],[{"start":{"row":4,"column":302},"end":{"row":4,"column":304},"action":"insert","lines":[", "],"id":227,"ignore":true}],[{"start":{"row":4,"column":304},"end":{"row":4,"column":306},"action":"insert","lines":["\"\""],"id":228,"ignore":true}],[{"start":{"row":4,"column":290},"end":{"row":4,"column":291},"action":"insert","lines":["."],"id":229,"ignore":true}],[{"start":{"row":4,"column":299},"end":{"row":4,"column":300},"action":"insert","lines":["."],"id":230,"ignore":true}],[{"start":{"row":4,"column":307},"end":{"row":4,"column":309},"action":"insert","lines":["*."],"id":231,"ignore":true}],[{"start":{"row":4,"column":309},"end":{"row":4,"column":310},"action":"insert","lines":["a"],"id":232,"ignore":true}],[{"start":{"row":4,"column":310},"end":{"row":4,"column":311},"action":"insert","lines":["v"],"id":233,"ignore":true}],[{"start":{"row":4,"column":311},"end":{"row":4,"column":312},"action":"insert","lines":["i"],"id":234,"ignore":true}],[{"start":{"row":4,"column":313},"end":{"row":4,"column":315},"action":"insert","lines":[", "],"id":235,"ignore":true}],[{"start":{"row":4,"column":315},"end":{"row":4,"column":318},"action":"insert","lines":["\"*\""],"id":236,"ignore":true}],[{"start":{"row":4,"column":317},"end":{"row":4,"column":321},"action":"insert","lines":[".doc"],"id":237,"ignore":true}],[{"start":{"row":4,"column":322},"end":{"row":4,"column":326},"action":"insert","lines":[", \"\""],"id":238,"ignore":true}],[{"start":{"row":4,"column":325},"end":{"row":4,"column":326},"action":"insert","lines":["*"],"id":239,"ignore":true}],[{"start":{"row":4,"column":326},"end":{"row":4,"column":328},"action":"insert","lines":[".d"],"id":240,"ignore":true}],[{"start":{"row":4,"column":328},"end":{"row":4,"column":330},"action":"insert","lines":["ov"],"id":241,"ignore":true}],[{"start":{"row":4,"column":330},"end":{"row":4,"column":331},"action":"insert","lines":["x"],"id":242,"ignore":true}],[{"start":{"row":4,"column":329},"end":{"row":4,"column":331},"action":"remove","lines":["vx"],"id":243,"ignore":true}],[{"start":{"row":4,"column":329},"end":{"row":4,"column":331},"action":"insert","lines":["cx"],"id":244,"ignore":true}],[{"start":{"row":4,"column":332},"end":{"row":4,"column":334},"action":"insert","lines":[", "],"id":245,"ignore":true}],[{"start":{"row":4,"column":334},"end":{"row":4,"column":336},"action":"insert","lines":["\"\""],"id":246,"ignore":true}],[{"start":{"row":4,"column":335},"end":{"row":4,"column":336},"action":"insert","lines":["*"],"id":247,"ignore":true}],[{"start":{"row":4,"column":336},"end":{"row":4,"column":339},"action":"insert","lines":["ppt"],"id":248,"ignore":true}],[{"start":{"row":4,"column":336},"end":{"row":4,"column":337},"action":"insert","lines":["."],"id":249,"ignore":true}],[{"start":{"row":4,"column":341},"end":{"row":4,"column":343},"action":"insert","lines":[", "],"id":250,"ignore":true}],[{"start":{"row":4,"column":343},"end":{"row":4,"column":345},"action":"insert","lines":["\"\""],"id":251,"ignore":true}],[{"start":{"row":4,"column":344},"end":{"row":4,"column":345},"action":"insert","lines":["*"],"id":252,"ignore":true}],[{"start":{"row":4,"column":345},"end":{"row":4,"column":346},"action":"insert","lines":["."],"id":253,"ignore":true}],[{"start":{"row":4,"column":346},"end":{"row":4,"column":347},"action":"insert","lines":["p"],"id":254,"ignore":true}],[{"start":{"row":4,"column":347},"end":{"row":4,"column":350},"action":"insert","lines":["ptx"],"id":255,"ignore":true}],[{"start":{"row":4,"column":351},"end":{"row":4,"column":353},"action":"insert","lines":[", "],"id":256,"ignore":true}],[{"start":{"row":4,"column":353},"end":{"row":4,"column":356},"action":"insert","lines":["\"*\""],"id":257,"ignore":true}],[{"start":{"row":4,"column":355},"end":{"row":4,"column":359},"action":"insert","lines":[".htm"],"id":258,"ignore":true}],[{"start":{"row":4,"column":359},"end":{"row":4,"column":360},"action":"insert","lines":["l"],"id":259,"ignore":true}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":377.6000061035156,"selection":{"start":{"row":4,"column":102},"end":{"row":4,"column":102},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1666154037341}