import mysql.connector

def conectar():
    return mysql.connector.connect(
        host = "pdmmonitor.net",
        user = "pdm_monitor",
        password = "+Corel1410",
        database = "pdm_monitor"
    )


