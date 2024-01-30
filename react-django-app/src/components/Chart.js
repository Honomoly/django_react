import React from 'react';
import {
    Radar, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis,
} from 'recharts';

const data = [
    {
        subject: '수질', A: 120, B: 110, fullMark: 150,
    },
    {
        subject: '샤워시설', A: 98, B: 130, fullMark: 150,
    },
    {
        subject: '주차장', A: 86, B: 130, fullMark: 150,
    },
    {
        subject: '안전', A: 99, B: 100, fullMark: 150,
    },
    {
        subject: '주변먹거리', A: 85, B: 90, fullMark: 150,
    },
    {
        subject: '주변 자연환경', A: 65, B: 85, fullMark: 150,
    },
];

const Chart = () => {
    return (
        <div id="chart">
            <RadarChart cx={300} cy={250} outerRadius={150} width={500} height={500} data={data}>
                <PolarGrid />
                <PolarAngleAxis dataKey="subject" />
                <PolarRadiusAxis />
                <Radar name="Mike" dataKey="A" fill="magenta" fillOpacity={0.6} />
            </RadarChart>
        </div>
    );
};

export default Chart;