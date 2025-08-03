# Ứng dụng Python với hàm Multiply

Đây là bài tập DevOps thực hành tạo ứng dụng Python với hàm `multiply(a, b)` và các công cụ DevOps.

## Cấu trúc dự án

```
de_1/
├── app.py                 # Ứng dụng chính với hàm multiply và Flask API
├── test_app.py           # Unit tests
├── requirements.txt      # Dependencies
├── Dockerfile           # Container hóa ứng dụng
├── .github/workflows/ci.yml  # GitHub Actions CI/CD
└── README.md            # Hướng dẫn này
```

## Tính năng

1. **Hàm multiply(a, b)**: Nhân hai số và trả về kết quả
2. **Flask API**: Web API để test hàm multiply
3. **Unit Tests**: Kiểm thử tự động với pytest
4. **Docker**: Container hóa ứng dụng
5. **GitHub Actions**: CI/CD pipeline tự động

## Cách sử dụng

### Chạy trực tiếp với Python

```bash
# Cài đặt dependencies
pip install -r requirements.txt

# Chạy ứng dụng
python app.py
```

### Chạy tests

```bash
# Chạy tất cả tests
pytest test_app.py -v

# Test trực tiếp hàm multiply
python -c "from app import multiply; print(multiply(3, 4))"
```

### Sử dụng Docker

```bash
# Build image
docker build -t python-multiply-app .

# Chạy container
docker run -p 5000:5000 python-multiply-app

# Test container
docker run --rm python-multiply-app python -c "from app import multiply; print(multiply(3, 4))"
```

## API Endpoints

- `GET /`: Thông tin ứng dụng
- `GET /multiply/<a>/<b>`: Tính tích của a và b

Ví dụ: `http://localhost:5000/multiply/3/4` trả về `{"a": 3, "b": 4, "result": 12}`

## CI/CD Pipeline

GitHub Actions sẽ tự động:

1. Chạy tests khi push code
2. Build Docker image
3. Test container

## Kết quả mong đợi

- `multiply(3, 4)` = 12 ✅
- Tất cả tests pass ✅
- Docker container chạy thành công ✅
- CI/CD pipeline hoạt động ✅
