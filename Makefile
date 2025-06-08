install:
	pip install --upgrade pip $$\
		pip install -r requirements.txt

format:
	black *.py

train:
	python train.py

eval:
	echo "## Model Metrics" > report.Model
	cat ./Result/metrics.txt >> report.Model

	echo '\n## Cofusion Matrix Plot' >> report.Model
	echo '![Confusion Matrix](./Result/model_result.png)' >> report.model_result

	cml comment create report.md