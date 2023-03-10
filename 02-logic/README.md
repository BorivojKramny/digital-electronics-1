# Lab 2: Borivoj Kramny

### 2-bit comparator

 | **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   |  0 | 0 0 | 0 0 | 0 | 1 | 0 |
   |  1 | 0 0 | 0 1 | 0 | 0 | 1 |
   |  2 | 0 0 | 1 0 | 0 | 0 | 1 |
   |  3 | 0 0 | 1 1 | 0 | 0 | 1 |
   |  4 | 0 1 | 0 0 | 1 | 0 | 0 |
   |  5 | 0 1 | 0 1 | 0 | 1 | 0 |
   |  6 | 0 1 | 1 0 | 0 | 0 | 1 |
   |  7 | 0 1 | 1 1 | 0 | 0 | 1 |
   |  8 | 1 0 | 0 0 | 1 | 0 | 0 |
   |  9 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 10 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 11 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 12 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 13 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 14 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 1 | 0 | 1 | 0 |

1. Karnaugh maps for other two functions of 2-bit comparator:


	chtěl jsem tabulky zapsat digitálně, ale z nějakého důvodu se nevykreslily, děkuji za koment

   Greater than:

 | **B1 B0** | **A1 A0** | **A1 A0** | **A1 A0** | **A1 A0** |
     | :-: | :-: | :-: | :-: | :-: |     
     |     | 0 0 | 0 1 | 1 1 | 1 0 |
     | 0 0 |  0  |  0  |  0  |  0  |
     | 0 1 |  1  |  0  |  0  |  0  |
     | 1 1 |  1  |  1  |  0  |  1  |
     | 1 0 |  1  |  1  |  0  |  0  |

   ![K-maps](images/greater.jpg)

   Less than:

 | **B1 B0** | **A1 A0** | **A1 A0** | **A1 A0** | **A1 A0** |
     | :-: | :-: | :-: | :-: | :-: |
     |     | 0 0 | 0 1 | 1 1 | 1 0 |
     | 0 0 |  0  |  1  |  1  |  1  |
     | 0 1 |  0  |  0  |  1  |  1  |
     | 1 1 |  0  |  0  |  0  |  0  |
     | 1 0 |  0  |  0  |  1  |  0  |

   ![K-maps](images/less.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

příslušné funkce jsou v obrázcích tabulek
   ![Logic functions](images/comparator_min.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "BCD_OF_YOUR_SECOND_LAST_ID_DIGIT"; -- Such as "0101" if ID = xxxx56
        s_a <= "BCD_OF_YOUR_LAST_ID_DIGIT";        -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_equals_A  = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_less_A    = 'WRITE_CORRECT_VALUE_HERE'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/U2wj)