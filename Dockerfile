FROM python:2.7

WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

# Run script when the container launches
ENTRYPOINT ["python", "tplmap.py"]

# Default command when the container starts (you can override this at runtime)
CMD ["-h"]


