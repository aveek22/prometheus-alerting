from prometheus_client import Counter, start_http_server
import random
from time import sleep
import logging

if __name__ == "__main__":

    logging.info("Starting application...")
    start_http_server(8000)
    c = Counter("count_8", "Counts the number 8")

    while True:
        num = random.randint(6, 8)
        logging.info(num)
        if num == 8:
            c.inc()
        sleep(1)
