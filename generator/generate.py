import csv
import random
import os
import sys

NUM_ROWS = 50

COLUMNS = ["film_name", "actor", "duration_minutes", "rating"]

def generate_row():
    return {
        "film_name": random.choice([
            "Avatar",
            "Titanic",
            "Interstellar",
            "Inception",
            "Barbie",
            "Dune",
            "Joker",
            "La La Land"]),
        "actor": random.choice([
            "Leonardo DiCaprio",
            "Margot Robbie",
            "Timothee Chalamet",
            "Ryan Gosling",
            "Joaquin Phoenix",
            "Zendaya"]),
        "duration_minutes": random.randint(80, 180),
        "rating": round(random.uniform(1.0, 10.0), 1),
    }

OUTPUT_DIR = sys.argv[1] if len(sys.argv) > 1 else "/data"
OUTPUT_FILE = os.path.join(OUTPUT_DIR, "data.csv")

os.makedirs(OUTPUT_DIR, exist_ok=True)

rows = [generate_row() for _ in range(NUM_ROWS)]

with open(OUTPUT_FILE, "w", newline="", encoding="utf-8") as f:
    writer = csv.DictWriter(f, fieldnames=COLUMNS)
    writer.writeheader()
    writer.writerows(rows)