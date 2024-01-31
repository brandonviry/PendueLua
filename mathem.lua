Math={}
function Math.alea(a,b)
    return ((os.time() % (math.floor(b) - math.floor(a) + 1)) + math.floor(a))
    
end

if not ... then
    
        print(Math.alea(0,9))
   
else
    return Math
end