# get_pdf_info.py

from PyPDF2 import PdfFileReader


def get_info(path):
    with open(path, 'rb') as f:
        pdf = PdfFileReader(f)
        info = pdf.getDocumentInfo()
        number_of_pages = pdf.getNumPages()
    
    print('No of Pages: ',number_of_pages)


path = './data/java_is_dead.pdf'
get_info(path)