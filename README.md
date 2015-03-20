# LongestPalindromSubsequence
To run
```
$ bundle install
$ rspec palindrom_spec.rb
```

##Debatable Error
```
1) LongestPalindromSubsequence#example contains palindrome has a space returns the string
     Failure/Error: expect(subject).to eq('racecar')
       
       expected: "racecar"
                got:  "rac car"
```
I would rather it return the string 'racecar'.
