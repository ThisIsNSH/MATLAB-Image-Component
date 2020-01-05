function a = comp(arr) 
    count=0;
    for row = 1:size(arr)(1)
      for col = 1:size(arr)(2)
        if arr(row,col) == 1
          arr = dfs(row,col,arr);
          count=count+1;
        endif
      endfor
    endfor
    a=count;
end

function b = dfs(row,col,arr)
  if row>=1 && row<=size(arr)(1) && col>=1 && col<=size(arr)(2) && arr(row,col)==1
    arr(row,col) = 0;
    arr = dfs(row+1,col,arr);
    arr = dfs(row-1,col,arr);
    arr = dfs(row,col+1,arr);
    arr = dfs(row,col-1,arr);
  endif
  b=arr;
endfunction
