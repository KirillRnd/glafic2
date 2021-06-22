#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "glafic.h"

static int n_cse_nfw = 34;
static double par_cse_nfw[]={
1.342695e-05,
3.365187e-15,
4.507253e-05,
1.021110e-13,
1.296571e-04,
2.145331e-12,
2.774584e-04,
7.634027e-12,
3.843388e-04,
3.366037e-11,
7.354621e-04,
2.369032e-10,
1.288247e-03,
1.109410e-09,
1.991462e-03,
3.299764e-09,
3.367855e-03,
2.286701e-08,
5.698736e-03,
7.580497e-08,
8.801935e-03,
3.626238e-07,
1.440974e-02,
1.133198e-06,
2.164083e-02,
5.163277e-06,
3.686066e-02,
2.568968e-05,
6.110846e-02,
1.183146e-04,
1.032743e-01,
5.254984e-04,
1.516013e-01,
1.223400e-03,
2.473472e-01,
8.579371e-03,
4.552649e-01,
4.403006e-02,
7.168941e-01,
9.639408e-02,
1.160655e+00,
3.767352e-01,
2.063415e+00,
9.350495e-01,
3.487336e+00,
1.606925e+00,
5.837006e+00,
3.109711e+00,
1.041522e+01,
6.152533e+00,
1.882719e+01,
1.098812e+01,
3.381991e+01,
2.008285e+01,
6.249954e+01,
3.925712e+01,
1.094868e+02,
4.406093e+01,
1.543583e+02,
7.126668e+01,
2.845410e+02,
1.944122e+02,
5.893165e+02,
4.720655e+02,
1.509972e+03,
4.786293e+02,
1.666799e+03,
1.824586e+03
};

/*--------------------------------------------------------------
  make tables
*/

