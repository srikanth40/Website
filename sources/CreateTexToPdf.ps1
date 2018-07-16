dir -Recurse *.tex | % {
    $file = $_.FullName;
    $dir = Split-Path $file -parent
    cd $dir
    if (-not $file.Contains("style.tex")) {
        pdflatex -synctex=1 --shell-escape -interaction=nonstopmode $file
    }
    cd ..
}




