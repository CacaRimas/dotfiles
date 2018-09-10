from urllib.request import urlopen
from bs4 import BeautifulSoup

# Site scraping 
quote_page = "http://www.sis.itu.edu.tr/tr/ders_programlari/LUprogramlar/luprg.php?nce=UUM"
page = urlopen(quote_page)

soup = BeautifulSoup(page, "html.parser")

name_box = soup.find("tr", attrs={"onmouseover": "this.bgColor='#D4E6FD'"})

last_item = name_box("td")[-1]

# Mailing 
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

email_user = 
email_password = 
email_send = 
subject = 'Elasticity'

msg = MIMEMultipart()
msg['From'] = email_user
msg['To'] = email_send
msg['Subject'] = subject

body = 'Kontenjan degisti'
msg.attach(MIMEText(body,'plain'))
if last_item.text != "30":
    try:
        text = msg.as_string()
        server = smtplib.SMTP('outgoing.itu.edu.tr', port=587)
        server.starttls()
        server.login(email_user, email_password)   
        server.sendmail(email_user,email_send,text)
        server.quit()
        print('successfully sent the mail')
    except:
print("failed to send mail")
