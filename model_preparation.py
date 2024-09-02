import joblib
import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

# загрузка предобработанных данных
data = pd.read_csv('../data/train/train_data_preprocessed.csv')
x = data[['day']]
y = data['temperature']

# Разделение данных на обучающую и валидационную выборки
x_train, x_val, y_train, y_val = train_test_split(x, y, test_size=1, random_state=42)

# Создание и обучение модели
model = LinearRegression()
model.fit(x_train, y_train)

predictions = model.predict(x_train)
mse = mean_squared_error(y_train, predictions)

print(f'Mean Squared Error for the train set: (mse)')

# Сохранение модели
joblib.dump(model, '../data/model.pkl')

