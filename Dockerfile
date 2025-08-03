# Sử dụng Python 3.9 slim image
FROM python:3.9-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy requirements trước để tận dụng Docker cache
COPY requirements.txt .

# Cài đặt dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Expose port 5000
EXPOSE 5000

# Command để chạy ứng dụng
CMD ["python", "app.py"] 