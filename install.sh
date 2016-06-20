if [ ! -d vendor/jsPDF ]; then
    wget --no-check-certificate -O jsPDF.zip https://github.com/MrRio/jsPDF/archive/v1.2.61.zip
    unzip jsPDF.zip
    mkdir vendor
    mv jsPDF-* vendor/jsPDF
    rm jsPDF.zip
    wget --no-check-certificate -O jsPDF-AutoTable.zip https://github.com/simonbengtsson/jsPDF-AutoTable/archive/v2.0.25.zip
    unzip jsPDF-AutoTable.zip
    mv jsPDF-AutoTable-* jsPDF-AutoTable
    rm jsPDF-AutoTable.zip
    mv jsPDF-AutoTable/dist/jspdf.plugin.autotable.src.js vendor/jsPDF/plugins/autotable.js
fi
