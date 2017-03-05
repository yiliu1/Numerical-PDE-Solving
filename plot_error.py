import numpy
import matplotlib
import matplotlib.pyplot as plt

# Load the data
errors = numpy.loadtxt('errors.txt')
resolutions = numpy.loadtxt('resolutions.txt')


# Plot the errors
plt.loglog(resolutions, errors, "-o", label='$\\max_{i,j}\{|u(x_i,y_j)-U_{i,j}|\}$')

# Now we want to approximate the convergence rate
convergencePolynomial = numpy.polyfit(numpy.log(resolutions), numpy.log(errors), 1)
plt.loglog(resolutions, numpy.exp(convergencePolynomial[1])*resolutions**convergencePolynomial[0], '--', label='$\mathcal{O}(N^{%.2f})$' % convergencePolynomial[0])
plt.legend()
plt.xlabel('$N$')
plt.ylabel('Error')
plt.grid('on')
plt.show()
