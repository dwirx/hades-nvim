async function fizzBuzzAsync(n) {
    for (let i = 1; i <= n; i++) {
        let output = '';
        if (i % 3 === 0) output += 'Fizz';
        if (i % 5 === 0) output += 'Buzz';
        if (output === '') output = i;
        console.log(output);
        await delay(1000); // Menunggu 1 detik sebelum mencetak angka berikutnya
    }
}

function delay(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

// Contoh pemanggilan
fizzBuzzAsync(15);

