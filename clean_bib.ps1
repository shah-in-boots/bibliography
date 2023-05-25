# Clean bibliography (.bib) files
#
# Mendeley bibliography format is not standadrized
# Requires latex escaping and clean names
# For windows, this should clean the files somewhat
#
# Author: Anish S. Shah, MD | MS

# Get the name of all the bib files in a variable
$files = Get-ChildItem -Path "." -Filter "*.bib"

# Loop through
foreach ($file in $files) {
	$content = Get-Content -Path $file.FullName
	$content = $content -replace "computer_program", "manual"
	$content = $content -replace "book_section", "inbook"
	$content = $content -replace "newspaper_article", "article"
	$content = $content -replace "magazine_article", "article"
	$content = $content -replace "web_page", "techreport"
	$content | Set-Content -Path $file.FullName
}
