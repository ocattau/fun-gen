## Consider the shell

Becoming comfortable using the shell can provide benefits outside of bioinformatics. Here are some examples of the benefits provided by shell familiarity for non-bioinformatics applications:

You have a spreadsheet (e.g. file.csv) with the following information in one column:

```
Example1
Example2
Example3
```

You want the column to look like the following:

```
Example1
Example1
Example1
Example2
Example2
Example2
Example3
Example3
```


How would one accomplish this in a spreadsheet program? A casual user might add two blank rows beneath each entry and then copy/paste the desired information into the blank rows that were just created. 

In the shell, a user would create a loop to read the file and use a print statement to format the output:

```
while read -r line \
do printf "%s\n" $line $line $line \
done < file.csv > newly_formatted_file.csv
```

For this particular example, it’s not obvious what benefit comes from approaching the problem one way or the other, as both would take a similar amount of time to implement the solution. As is the case with many uses of the shell, the time savings are realized when dealing with significantly larger files. Imagine that the original spreadsheet file (file.csv) actually had 100 lines. Now imagine manipulating the file using spreadsheet software as previously described. It becomes clear that using the shell is much more efficient and results in significant time savings. 

Another example where having a grasp of using the shell has benefits outside of bioinformatics is renaming files. Let’s say you just returned from vacation and transferred all your pictures to a folder on your computer. You’d like to rename them something other than the default phone filenames (e.g. DSC1402.jpg). The casual user would likely use the Windows Explorer (Windows) or the Finder (Mac) to click on each individual file and type in a new name (e.g. france01.jpg). Having dozens (or even hundreds) of files to rename in this fashion would take serious dedication and time. Using the shell, this could be accomplished quickly in the following fashion:

```
n=0
for picture in *.jpg \
do mv “$picture” france”${n}”.jpg \
n=$((n+1)) \
done
```

The above examples are not outside of the realm of knowledge that a beginner delving into bioinformatics would be exposed to. Demonstrating “real world” usage (i.e. not limited to specific, scientific applications) can help show the utility of investing the initial time and effort to begin using the shell for scientific purposes.

Utilizing the shell for text manipulation can also minimize unforeseen issues when manipulating files with commonly used software like Microsoft Word/Excel. In particular, many spreadsheet softwares can/will attempt to interpret the type of data in cells. Although this can be a handy feature, it can also result in unforeseen changes to your data. For example, Microsoft Excel has a propensity to change certain number formats to dates. Additionally, numbers may get rounded off or reformatted (e.g. decimal converted to scientific notation).
Here's a reference for examples of real-world problems caused by using Excel in biological data sets: Mistaken Identifiers: Gene name errors can be introduced inadvertently when using Excel in bioinformatics. 

