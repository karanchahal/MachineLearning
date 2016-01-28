import matplotlib.pyplot as plt

from sklearn import datasets
from sklearn import svm

digits = datasets.load_digits()

clf = svm.SVC(gamma = 0.001, C=100) #gamme is alpha and C = 1/lambda

x,y = digits.data[:-4],digits.target[:-4] # gets out x and y matrices/vectors till the end of targets -1

clf.fit(x,y)

print('Prediction:',clf.predict(digits.data[-1]))

plt.imshow(digits.images[-1],cmap=plt.cm.gray_r,interpolation="nearest")
plt.show()




