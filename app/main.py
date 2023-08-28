import time

from prometheus_client import Counter, start_http_server, Gauge
import random
from time import sleep
import logging
import datetime

logging.basicConfig(level=logging.DEBUG)

if __name__ == "__main__":

    logging.info("Starting application...")
    start_http_server(8000)
    c = Counter("count_8", "Counts the number 8")
    g = Gauge("requests", "Gauge of requests")

    while True:
        num = random.randint(4, 9)
        logging.info(f"{datetime.datetime.now(datetime.timezone.utc)}----{num}")
        g.set(num)
        if num == 8:
            c.inc()
        sleep(2)
