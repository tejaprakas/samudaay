# Install dependencies
pip install -r requirements.txt

# Run the engine
python src/engine.py

# Deploy to Cloud Run
gcloud builds submit --tag gcr.io/$PROJECT_ID/samudaay
gcloud run deploy samudaay --image gcr.io/$PROJECT_ID/samudaay --platform managed
