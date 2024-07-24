define(responsiveImage, `
    <img
        srcset="/images/$1/$1.1000.jpeg 1000w,
            /images/$1/$1.800.jpeg 800w, 
            /images/$1/$1.600.jpeg 600w,
            /images/$1/$1.300.jpeg 300w,
            /images/$1/$1.150.jpeg 150w"
        sizes="(max-width: 299px) 150px,
            (max-width: 599px) 300px,
            (max-width: 819px) 600px,
            (max-width: 999px) 800px,
            1000px"
        src="/images/$1/$1.1000.jpeg"
        alt="$2">
')

define(linksFirstPage, `
    <table>
        <tr>
            <td style="width: 10%"><a href="$1">Contents Page</a></td>
            <td style="width: 10%"><a href="$2">Next --&gt;</a></td>
        </tr>
    </table>
')

define(linksList, `
    <table>
        <tr>
            <td style="width: 10%"><a href="$1">&lt;-- Previous</a></td>
            <td style="width: 10%"><a href="$2">Contents Page</a></td>
            <td style="width: 10%"><a href="$3">Next --&gt;</a></td>
        </tr>
    </table>
')


define(linksLastPage, `
    <table>
        <tr>
            <td style="width: 10%"><a href="$1">&lt;-- Previous</a></td>
            <td style="width: 10%"><a href="$2">Contents Page</a></td> 
        </tr>
    </table>
')
