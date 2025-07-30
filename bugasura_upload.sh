#!/bin/bash

echo "🔧 Running Robot Framework tests..."
robot --outputdir results tests/
TEST_EXIT_CODE=$?

echo "📤 Uploading Robot results to Bugasura..."

API_KEY="your api key "
TEAM_ID="83422"
PROJECT_ID="112220"
TESTRUN_ID="126795"
SERVER="facilio"

if [ -f "results/output.xml" ]; then
  bugasura UPLOAD_RESULTS results/output.xml \
    --api_key "$API_KEY" \
    --team_id "$TEAM_ID" \
    --project_id "$PROJECT_ID" \
    --testrun_id "$TESTRUN_ID" \
    --server "$SERVER"
  echo "✅ Upload completed!"
else
  echo "❌ output.xml not found. Robot test may not have generated it."
fi

exit $TEST_EXIT_CODE
