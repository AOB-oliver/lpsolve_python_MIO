/* Objective function */
min: +50 C1 +83 C2 +130 C3 +61 C4 +97 C5 +145 C6;

/* Constraints */
+C1 +C4 = 3000;
+C2 +C5 = 2000;
+C3 +C6 = 900;
+2 C1 +1.5 C2 +3 C3 <= 10000;
+C1 +2 C2 +C3 <= 5000;

/* Bounds */
C1 >= 0;
C2 >= 0;
C3 >= 0;
C4 >= 0;
C5 >= 0;
C6 >= 0;


/* Integer definitions */
/*int C1, C2, C3, C4, C5, C6; */
