import sys
sys.path.insert(0, "vendor")

from moduleA import do_a_stuff
from moduleB import do_b_stuff

def fusion_module_divin():
    print("=== Fusion divine des modules ===")
    print("Module A dit :", do_a_stuff())
    print("Module B répond :", do_b_stuff())
