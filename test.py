import threading
import time
import os

class Intervallometre(threading.Thread):

    def __init__(self, duree, fonction, args=[], kwargs={}):
        threading.Thread.__init__(self)
        self.duree = duree
        self.fonction = fonction
        self.args = args
        self.kwargs = kwargs
        self.encore = True  # pour permettre l'arret a la demande

    def run(self):
        while self.encore:
            self.timer = threading.Timer(self.duree, self.fonction, self.args, self.kwargs)
            self.timer.setDaemon(True)
            self.timer.start()
            self.timer.join()

    def stop(self):
        self.encore = False  # pour empecher un nouveau lancement de Timer et terminer le thread
        if self.timer.isAlive():
            self.timer.cancel()  # pour terminer une eventuelle attente en cours de Timer
def affiche():
    # print "top" + ' ' + ch + ' ' + x + ' ' + y
    os.system("git checkout R2D21 && git add . && git commit -am \"commit\" && git checkout master && git merge R2D21 && git push")
def affiche2(*args, **kwargs):
    ch = "top"
    ch += ' ' + args[0]
    ch += ' ' + kwargs['x']
    ch += ' ' + kwargs['y']
    print ch

def affiche3(*args, **kwargs):
    ch = "top"
    for arg in args:
        ch += ' ' + arg
    d = kwargs.items()
    d.sort()
    for cle, valeur in d:
        ch += ' ' + valeur
    print ch

    import time

duree = 5

while True:
    # try:
    t =  Intervallometre(duree, affiche)
    t.setDaemon(True)
    t.start()
    time.sleep(5.1)
    t.stop()
    # except RuntimeError:
    #     print "An error as occured"

# t2 =  Intervallometre(duree, affiche2, ["toto2"], {'x':"titi", 'y':"tata"})
# t2.setDaemon(True)
# t2.start()

# time.sleep(5.1)
# t2.stop()

# t3 =  Intervallometre(duree, affiche3, ["toto3"], {'x':"titi", 'y':"tata"})
# t3.setDaemon(True)
# t3.start()

# time.sleep(5.1)
# t3.stop()
