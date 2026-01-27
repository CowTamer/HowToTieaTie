# EcoScan - Clothing Sustainability Scanner

An AI-powered mobile application that scans clothing items and provides detailed sustainability analysis including materials, longevity, recyclability, and environmental impact.

## Features

- **Smart Scanning** - Scan clothing labels or garments using your device camera
- **AI-Powered Analysis** - Uses OpenAI GPT-4o Vision for accurate material identification
- **Sustainability Scoring** - Get a 1-10 sustainability rating with detailed explanation
- **Environmental Impact** - Learn about water usage, carbon footprint, and chemical processing
- **Care Instructions** - Maximize garment lifespan with proper care guidelines
- **Recyclability Info** - Find out how and where to recycle your clothing
- **Scan History** - Save and review past scans

## Tech Stack

### Frontend
- **Framework**: Expo / React Native
- **Navigation**: Expo Router (file-based routing)
- **Camera**: expo-camera
- **Storage**: AsyncStorage

### Backend
- **Framework**: FastAPI (Python)
- **Database**: MongoDB
- **AI**: OpenAI GPT-4o Vision API
- **Async Driver**: Motor (async MongoDB)

## Getting Started

### Prerequisites
- Python 3.9+
- Node.js 18+
- MongoDB instance
- OpenAI API key (via Emergent LLM)

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```

2. Create a virtual environment and install dependencies:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Configure environment variables in `backend/.env`:
   ```
   MONGO_URL=mongodb://localhost:27017
   DB_NAME=ecoscan_db
   EMERGENT_LLM_KEY=your_api_key_here
   ```

4. Run the server:
   ```bash
   uvicorn server:app --reload --host 0.0.0.0 --port 8000
   ```

### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Configure the backend URL in your environment:
   ```
   EXPO_PUBLIC_BACKEND_URL=http://localhost:8000
   ```

4. Start the Expo development server:
   ```bash
   npx expo start
   ```

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/` | Health check |
| POST | `/api/analyze-clothing` | Analyze clothing image |
| GET | `/api/scan-history` | Get all saved scans |
| DELETE | `/api/scan/{scan_id}` | Delete a specific scan |

### Analyze Clothing Request

```json
{
  "image_base64": "base64_encoded_image_string",
  "scan_type": "label" | "garment"
}
```

### Analysis Response

```json
{
  "success": true,
  "scan_id": "uuid",
  "analysis": {
    "materials": ["cotton", "polyester"],
    "longevity": "5-10 years with proper care",
    "recyclability": "Recyclable at textile facilities",
    "care_instructions": "Machine wash cold, tumble dry low",
    "environmental_impact": "Moderate water usage...",
    "sustainability_score": "7/10 - Good sustainability"
  }
}
```

## Project Structure

```
├── backend/
│   ├── server.py          # FastAPI application
│   ├── requirements.txt   # Python dependencies
│   └── .env               # Environment variables
├── frontend/
│   └── app/
│       ├── index.tsx      # Home screen
│       ├── scan.tsx       # Camera/scanning screen
│       ├── results.tsx    # Analysis results screen
│       └── history.tsx    # Scan history screen
└── README.md
```

## Usage

1. **Home Screen** - Tap "Start Scanning" to begin or "View History" for past scans
2. **Scanning** - Grant camera permission, position the clothing item, and capture
3. **Select Type** - Choose "Label" for tag scanning or "Garment" for visual analysis
4. **View Results** - Review the detailed sustainability analysis and score
5. **History** - Access saved scans anytime from the history screen

## License

This project is proprietary software.
