import requests
from bs4 import BeautifulSoup
page = requests.get('https://www.avatto.com/computer-science/test/mcqs/web-technology/html/162/3.html')
# Create a BeautifulSoup object
soup = BeautifulSoup(page.text, 'html.parser')

QuestionClass = soup.findAll(class_='ques')
for Qc in QuestionClass:
    qcstr = str(Qc.prettify())
    rmpre = qcstr.split('<p>\n')
    rmpost = rmpre[1].split('</p>')
    print(rmpost[0])


for idd in range(1,5):
    AnswerClass = soup.findAll(id="ans"+str(idd)+"_4425")
    for Ac in AnswerClass:
        acstr = str(Ac.prettify())
        rmpre = acstr.split('<p>\n')
        rmpost = rmpre[1].split('</p>')
        print(rmpost[0])
#print(AnswerClass.prettify())



#q = BeautifulSoup(lis)
#p = q.findAll('p')



#for artist_namein artist_name_list:

    #q = BeautifulSoup(artist_name, 'html.parser')

    #artist_name = q.findAll('p')

 #   print(artist_name.prettify())
# Pull text from all instances of <a> tag within BodyText div
"""artist_name_list_items = artist_name_list.find_all('a')
for artist_name in artist_name_list_items:
    print(artist_name.prettify())"""