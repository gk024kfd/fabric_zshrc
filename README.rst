"""
cat zshrc >> ~/.zshrc
"""

This file suggest task method in fabfile.py

ex)
    $ fab <input tab>
    
    $ fab 
    deploy     ps 
    restart    hello 


fabfile.py
    
    @task
    def deploy():
        run("./deploy")
    
    @task
    def restart():
        run("./init 6")
    
    @task
    def ps(process):
        run("ps | grep %s" % process)
    
    @task
    def hello():
        run("echo hello!")
    
    
    @task 
    def host_type():
        run('uname -s')
    

