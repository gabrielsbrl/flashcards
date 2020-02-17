class Sm {
    constructor() {}
    calc(quality, repetitions, previousInterval, previousEaseFactor) {
        console.log(quality, repetitions, previousInterval, previousEaseFactor);
        let interval;
        let easeFactor;
        quality = parseInt(quality);

        if(quality >= 3) {
            switch(repetitions) {
                case 0: 
                    interval = 1;
                    break;
                case 1:
                    interval = 6;
                    break;
                default:
                    interval = Math.round(previousInterval * previousEaseFactor)
            }

            repetitions++;
            easeFactor = previousEaseFactor +
            (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02));
        } else {
            repetitions = 0;
            interval = 1;
            easeFactor = previousEaseFactor;
        }

        if (easeFactor < 1.3) {
            easeFactor = 1.3;
        }

        return {
            interval,
            repetitions,
            easeFactor
        };
    }
}