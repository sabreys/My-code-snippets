# if you want to store unique and unrepeated objects in set . you need to overwrite __eq__ and __hash__ .every object has unique hash value, so set can not recognize  same objects.
# we formatted the hash code with our identifier like primary key for an object and we define how to compare this objects.

class Comment:
    def __init__(self,name,text):
      self.name = name
      self.text = text
        
    def __str__(self):
        return self.name+":"+self.text

    def __hash__(self):
        return hash( self.name+self.text)


    def __eq__(self, other):  # we define to how to compare two Comment object 
        return self.name == other.name and self.text == other.text



commentSet=set()

commentSet.add(Comment("kafka","hello"))
commentSet.add(Comment("melisa","shut up"))
commentSet.add(Comment("kafka","hello"))


for x in commentSet:
  print(x)