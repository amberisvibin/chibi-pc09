from PIL import Image

length = 68

current = 0

f = open("array.txt", "w")

f.write("bool chars[{}][8][8] ".format(length + 1) + "{ \n")

f.write("""
    {
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    {0,0,0,0,0,0,0,0,},
    },
""")

for k in range(length):

    if current < 10:
        img = Image.open("sprite/letter0{}.png".format(current))
    else:
        img = Image.open("sprite/letter{}.png".format(current))

    w,h = img.size

    f.write("\n    {\n")

    for i in range(h):
        f.write("    {")
        for j in range(w):

            r,g,b,p = img.getpixel((j,i))
            if p == 0:
                f.write("0,")
            if p == 255:
                f.write("1,")
        f.write("},\n")
    f.write("    },\n")
    current += 1
f.write("};")
