import '../models/fighter.dart';

const _assetRoot = 'assets/images';
const _fallbackPortrait = '$_assetRoot/hero-banner.jpg';

final List<Fighter> fighters = [
  Fighter(
    id: 'matangini-hazra',
    name: 'Matangini Hazra',
    title: 'Gandhi Buri of Tamluk',
    born: '19 October 1869',
    died: '29 September 1942',
    birthYear: 1869,
    deathYear: 1942,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Matangini Hazra was a Gandhian freedom fighter from Tamluk whose courage, repeated arrests, and final march in 1942 made her one of Bengal’s most revered revolutionaries.',
    chapters: [
      Chapter(
        id: 'mh-life',
        title: 'Life and Resistance',
        subtitle: 'From Village Service to Martyrdom',
        yearRange: '1869 - 1977',
        events: [
          TimelineEvent(
            id: 'mh-1',
            year: 1869,
            month: '19 October',
            title: 'Birth of Matangini Hazra',
            description:
                'Matangini Hazra was born in Hogla near Tamluk in 1869. Her father was a poor peasant, and she could not receive formal schooling.',
            type: EventType.birth,
            location: 'Tamluk, West Bengal',
            coordinates: const EventCoordinates(lat: 22.3009, lng: 87.9259),
          ),
          TimelineEvent(
            id: 'mh-2',
            year: 1887,
            title: 'Widowhood and service to her village',
            description:
                'Married very young, she was widowed at around 18 and returned to live with her father, serving her community and gradually embracing Gandhian ideals. She came to be known as Gandhi Buri.',
            type: EventType.milestone,
            location: 'Tamluk, West Bengal',
            coordinates: const EventCoordinates(lat: 22.3009, lng: 87.9259),
          ),
          TimelineEvent(
            id: 'mh-3',
            year: 1900,
            month: '1900s',
            title: 'Rise of nationalist influence',
            description:
                'As the nationalist movement spread through the region, Matangini was drawn into the expanding struggle against British rule inspired by Gandhian non-violence.',
            type: EventType.movement,
            location: 'Tamluk, West Bengal',
            coordinates: const EventCoordinates(lat: 22.3009, lng: 87.9259),
          ),
          TimelineEvent(
            id: 'mh-4',
            year: 1905,
            title: 'Deeper involvement in the freedom movement',
            description:
                'By 1905, Gandhi Buri had become increasingly involved in the Indian independence movement, joining a wider wave of women from the Midnapore region who contributed significantly to liberation efforts.',
            type: EventType.movement,
            location: 'Midnapore, West Bengal',
            coordinates: const EventCoordinates(lat: 22.4258, lng: 87.3199),
          ),
          TimelineEvent(
            id: 'mh-5',
            year: 1932,
            title: 'Salt Act protest and imprisonment',
            description:
                'Matangini Hazra joined the non-cooperation movement in 1932, was arrested for breaking the Salt Act, and later spent six months in Baharampur prison. After release, she remained active in Congress work and spinning khadi.',
            type: EventType.arrest,
            location: 'Baharampur, West Bengal',
            coordinates: const EventCoordinates(lat: 24.1047, lng: 88.2510),
          ),
          TimelineEvent(
            id: 'mh-6',
            year: 1933,
            title: 'Injured in police baton charge',
            description:
                'She sustained injuries during a police baton charge after participating in a subdivision-level Congress convention in Serampore, yet her resolve remained unbroken.',
            type: EventType.milestone,
            location: 'Serampore, West Bengal',
            coordinates: const EventCoordinates(lat: 22.7528, lng: 88.3406),
          ),
          TimelineEvent(
            id: 'mh-7',
            year: 1942,
            month: '29 September',
            title: 'Martyrdom at Tamluk',
            description:
                'At age 73, Hazra led around 6,000 protesters, many of them women, toward the Tamluk police station. Even after being shot three times, she continued forward until she collapsed, becoming a symbol of fearless sacrifice.',
            type: EventType.death,
            location: 'Tamluk, West Bengal',
            coordinates: const EventCoordinates(lat: 22.3009, lng: 87.9259),
          ),
          TimelineEvent(
            id: 'mh-8',
            year: 1977,
            month: 'Post 1942',
            title: 'Legacy in public memory',
            description:
                'Her courage continued to inspire generations. In 1977, she became the first female revolutionary to have a statue installed at Kolkata Maidan, and many schools, roads, and neighborhoods were later named in her honor.',
            type: EventType.achievement,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'labanya-prabha-ghosh',
    name: 'Labanya Prabha Ghosh',
    title: 'Manbhum Janani',
    born: '14 August 1897',
    died: '11 April 2011',
    birthYear: 1897,
    deathYear: 2011,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Labanya Prabha Ghosh was a major political and social force in Purulia whose work ranged from the Non-Cooperation Movement to the Bhasha Andolan and public service as an MLA.',
    chapters: [
      Chapter(
        id: 'lpg-life',
        title: 'Manbhum Janani',
        subtitle: 'Political Leadership and Social Reform',
        yearRange: '1897 - 2011',
        events: [
          TimelineEvent(
            id: 'lpg-1',
            year: 1897,
            month: '14 August',
            title: 'Birth of Labanya Prabha Ghosh',
            description:
                'Labanya Prabha Ghosh was born in Purulia, West Bengal, to freedom fighter and teacher Nabarun Chandra. She studied at home under her father’s guidance and was later known as Manbhum Janani.',
            type: EventType.birth,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-2',
            year: 1908,
            month: 'Around 1908',
            title: 'Marriage to Atul Chandra Ghosh',
            description:
                'At only 11 years old, Labanya married Atul Chandra Ghosh, who would later become one of Purulia’s leading freedom fighters.',
            type: EventType.milestone,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-3',
            year: 1921,
            title: 'Father arrested during Non-Cooperation',
            description:
                'Her father was arrested by Purulia authorities in 1921 for supporting Gandhi’s Non-Cooperation Movement, bringing the struggle even closer to her daily life.',
            type: EventType.arrest,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-4',
            year: 1921,
            title: 'Shilpashram established',
            description:
                'Founded by her father and husband in Purulia, Shilpashram became a center of Non-Cooperation activity and later a meeting place for national leaders including Mahatma Gandhi and Netaji Subhas Chandra Bose.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-5',
            year: 1925,
            title: 'Launch of Mukti',
            description:
                'Her father launched Mukti, a revolutionary Bengali bi-weekly newspaper used in the struggle for independence.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-6',
            year: 1926,
            title: 'District Congress leadership',
            description:
                'Labanya Ghosh was elected to the District Congress Committee in Manbhum and became the first woman member of Purulia’s Lok Sevak Sangha.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-7',
            year: 1930,
            title: 'Support for Salt Satyagraha',
            description:
                'She strongly supported Gandhi’s Salt Satyagraha and organized local marches in Purulia.',
            type: EventType.movement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-8',
            year: 1941,
            title: 'Imprisoned for Satyagraha support',
            description:
                'Labanya Prabha Ghosh was jailed in 1941 for supporting Satyagraha campaigns.',
            type: EventType.arrest,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-9',
            year: 1945,
            title: 'Flag Satyagraha at Konapara',
            description:
                'In 1945, she organized a Flag Satyagraha at Konapara, reinforcing her position as a determined local leader.',
            type: EventType.movement,
            location: 'Konapara, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-10',
            year: 1948,
            month: '1940s - 1950s',
            title: 'Leadership in the Bhasha Andolan',
            description:
                'Across the late 1940s and 1950s, Labanya led the Bhasha Andolan in Manbhum against the compulsory imposition of Hindi over Bengali. Her repeated protests and imprisonments helped drive the transfer of Purulia from Bihar to West Bengal.',
            type: EventType.movement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-11',
            year: 1957,
            title: 'Elected MLA',
            description:
                'Labanya Prabha Ghosh was elected MLA from the Purulia Assembly Constituency in 1957.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-12',
            year: 1969,
            title: 'Takes over Mukti and Shilpashram',
            description:
                'After her husband’s death in 1969, Labanya became the principal editor of Mukti and took charge of Shilpashram’s continued work.',
            type: EventType.milestone,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'lpg-13',
            year: 2011,
            month: '11 April',
            title: 'Death and enduring legacy',
            description:
                'Labanya Prabha Ghosh passed away on 11 April 2011. She is remembered for her work in the Salt Satyagraha, Flag Satyagraha, women’s empowerment, and social justice.',
            type: EventType.death,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'suhasini-ganguly',
    name: 'Suhasini Ganguly',
    title: 'Revolutionary of Jugantar',
    born: '3 February 1909',
    died: '23 March 1965',
    birthYear: 1909,
    deathYear: 1965,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Suhasini Ganguly was a revolutionary associated with Jugantar, Chhatri Sangha, and later the Communist movement, remembered for sheltering activists and enduring repeated imprisonment.',
    chapters: [
      Chapter(
        id: 'sg-life',
        title: 'Underground Resistance',
        subtitle: 'Revolution, Shelter, and Imprisonment',
        yearRange: '1909 - 1965',
        events: [
          TimelineEvent(
            id: 'sg-1',
            year: 1909,
            month: '3 February',
            title: 'Birth of Suhasini Ganguly',
            description:
                'Suhasini Ganguly was born in the Khulna district of undivided Bengal to Abinashchandra Ganguly and Sarala Sundara Devi.',
            type: EventType.birth,
            location: 'Khulna district, Bengal',
            coordinates: const EventCoordinates(lat: 22.8456, lng: 89.5403),
          ),
          TimelineEvent(
            id: 'sg-2',
            year: 1924,
            title: 'Completed matriculation',
            description:
                'She completed her matriculation from Dhaka Eden School in 1924, marking the beginning of a more public life of service and activism.',
            type: EventType.education,
            location: 'Dhaka, Bengal',
            coordinates: const EventCoordinates(lat: 23.8103, lng: 90.4125),
          ),
          TimelineEvent(
            id: 'sg-3',
            year: 1926,
            month: 'Around 1924 - 1928',
            title: 'Teaching career and entry into revolutionary work',
            description:
                'After her diploma, she moved to Calcutta, worked as a teacher for the deaf and mute, joined the Jugantar group, and helped recruit and train members in the semi-revolutionary Chhatri Sangha.',
            type: EventType.movement,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'sg-4',
            year: 1929,
            month: '1928 - 1930',
            title: 'Relocation to Chandannagore',
            description:
                'Following increased British pressure and her arrest during this period, Suhasini shifted operations to Chandannagore, then under French control.',
            type: EventType.milestone,
            location: 'Chandannagore, West Bengal',
            coordinates: const EventCoordinates(lat: 22.8626, lng: 88.3672),
          ),
          TimelineEvent(
            id: 'sg-5',
            year: 1930,
            month: '18 April',
            title:
                'Sheltering revolutionaries after the Chittagong Armoury Raid',
            description:
                'After the Chittagong Armoury Raid, the Chhatri Sangha directed the 21-year-old Ganguly to help shelter revolutionaries. Disguised as a married couple with Shashadhar Acharya, she offered refuge to activists under British surveillance.',
            type: EventType.movement,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'sg-6',
            year: 1930,
            month: 'September',
            title: 'Raid on her Chandannagore residence',
            description:
                'British police led by Charles Tegart raided her home in Chandannagore. The raid caused the death of Jiban Ghoshal, and Suhasini Ganguly, Shashadhar Acharya, and Ganesh Ghosh were arrested. She was released soon after.',
            type: EventType.arrest,
            location: 'Chandannagore, West Bengal',
            coordinates: const EventCoordinates(lat: 22.8626, lng: 88.3672),
          ),
          TimelineEvent(
            id: 'sg-7',
            year: 1932,
            title: 'Detained in Hijli camp',
            description:
                'Under the Bengal Criminal Law Amendment Act, Ganguly was imprisoned from 1932 to 1938 in Hijli Detention Camp, now associated with the site of IIT Kharagpur.',
            type: EventType.arrest,
            location: 'Hijli Detention Camp, Kharagpur',
            coordinates: const EventCoordinates(lat: 22.3149, lng: 87.3105),
          ),
          TimelineEvent(
            id: 'sg-8',
            year: 1938,
            month: 'Post 1938',
            title: 'Association with the Communist Party',
            description:
                'After release, she developed strong ties with the Communist Party of India and became active in communist organizing.',
            type: EventType.achievement,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'sg-9',
            year: 1942,
            month: '1942 - 1945',
            title: 'Imprisoned again during Quit India years',
            description:
                'Suhasini Ganguly was imprisoned between 1942 and 1945 for giving refuge to Hemant Tarafdar, who played a role in the Quit India Movement.',
            type: EventType.arrest,
            location: 'Presidency Jail, Kolkata',
            coordinates: const EventCoordinates(lat: 22.5411, lng: 88.3426),
          ),
          TimelineEvent(
            id: 'sg-10',
            year: 1950,
            month: '1950s',
            title: 'Post-independence arrest',
            description:
                'Even after independence, she was arrested under the West Bengal Security Act of 1950, underscoring the political turbulence of the period.',
            type: EventType.arrest,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'sg-11',
            year: 1965,
            month: '23 March',
            title: 'Death and remembrance',
            description:
                'Suhasini Ganguly died in a road accident on 23 March 1965. Her repeated sacrifices for the freedom struggle are remembered through public tributes such as Suhasini Ganguly Sarani.',
            type: EventType.death,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'atul-chandra-ghosh',
    name: 'Atul Chandra Ghosh',
    title: 'Manbhum Keshari',
    born: '2 March 1881',
    died: '1969',
    birthYear: 1881,
    deathYear: 1969,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Atul Chandra Ghosh was a key leader of Manbhum’s nationalist politics whose work in Congress, Lok Sewak Sangha, and the language movement shaped Purulia’s integration into West Bengal.',
    chapters: [
      Chapter(
        id: 'acg-life',
        title: 'Manbhum Keshari',
        subtitle: 'Freedom Struggle and Regional Leadership',
        yearRange: '1881 - 1969',
        events: [
          TimelineEvent(
            id: 'acg-1',
            year: 1881,
            month: '2 March',
            title: 'Birth of Atul Chandra Ghosh',
            description:
                'Atul Chandra Ghosh was born in Khandaghosh village in the Bardhaman district and later became widely known as Manbhum Keshari.',
            type: EventType.birth,
            location: 'Khandaghosh, West Bengal',
            coordinates: const EventCoordinates(lat: 23.2311, lng: 87.7139),
          ),
          TimelineEvent(
            id: 'acg-2',
            year: 1908,
            title: 'Passed law examinations',
            description:
                'In 1908, he completed his law examinations and began legal practice in Purulia.',
            type: EventType.education,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-3',
            year: 1908,
            title: 'Marriage to Labanya Prabha Ghosh',
            description:
                'Atul Chandra Ghosh married Labanya Prabha Ghosh in 1908, beginning a partnership closely tied to the nationalist movement in Purulia.',
            type: EventType.milestone,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-4',
            year: 1920,
            title: 'Joined the freedom struggle',
            description:
                'Inspired by Gandhi’s Non-Cooperation Movement, he gave up his legal practice and entered full-time nationalist work.',
            type: EventType.movement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-5',
            year: 1921,
            title: 'Worked with Nibaran Chandra Dasgupta',
            description:
                'After his father-in-law Nibaran Chandra Dasgupta was arrested for the Non-Cooperation Movement, Atul later joined him in building Shilpashram as a center of organized political effort in Manbhum.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-6',
            year: 1925,
            title: 'Edited Mukti',
            description:
                'He took charge of editing Mukti, a Bengali weekly newspaper launched in Purulia and used for nationalist mobilization.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-7',
            year: 1930,
            month: '8 April',
            title: 'No Chowkidari Tax campaign',
            description:
                'At a Ranchi meeting during the Civil Disobedience Movement, Atul Chandra Ghosh, then secretary of the Manbhum District Satyagraha Committee, urged people to refuse the Chowkidari Tax.',
            type: EventType.movement,
            location: 'Ranchi, Jharkhand',
            coordinates: const EventCoordinates(lat: 23.3441, lng: 85.3096),
          ),
          TimelineEvent(
            id: 'acg-8',
            year: 1933,
            month: '1930s',
            title: 'Led Lok Sewak Sangha',
            description:
                'After several Manbhum leaders were jailed and later released, the Lok Sewak Sangha was formed to uplift marginalized communities. Atul Chandra Ghosh led both it and the District Congress Committee.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-9',
            year: 1942,
            month: '9 August',
            title: 'Quit India arrests',
            description:
                'With the launch of the Quit India Movement, Lok Sewak Sangha activists and Manbhum Congress workers were arrested. Atul Chandra Ghosh and members of his family were also imprisoned.',
            type: EventType.arrest,
            location: 'Manbhum / Purulia',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-10',
            year: 1947,
            title: 'Demanded Manbhum for West Bengal',
            description:
                'After independence, when Manbhum was placed in Bihar, Atul moved a resolution in the Congress district committee arguing that it should join West Bengal because of its large Bengali-speaking population. The proposal was rejected and he resigned from Congress.',
            type: EventType.milestone,
            location: 'Manbhum / Purulia',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-11',
            year: 1948,
            title: 'Turned Lok Sewak Sangha into a political party',
            description:
                'With Bibhuti Dasgupta, he reshaped the Lok Sewak Sangha into a political party and organized the Bhasha Satyagraha and Banga Satyagraha Abhijan for the inclusion of Manbhum in West Bengal.',
            type: EventType.movement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-12',
            year: 1953,
            title: 'Reorganization demand accepted',
            description:
                'The States Reorganization Commission eventually accepted his demand in principle, moving toward the transfer of Manbhum into West Bengal.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-13',
            year: 1956,
            month: '1 November',
            title: 'Purulia integrated into West Bengal',
            description:
                'A new Purulia district was carved out of Manbhum and formally became part of West Bengal on 1 November 1956.',
            type: EventType.achievement,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
          TimelineEvent(
            id: 'acg-14',
            year: 1969,
            title: 'Death and legacy',
            description:
                'Atul Chandra Ghosh died in 1969, remembered as Manbhum Keshari for his work in the freedom struggle and in securing Purulia’s place within West Bengal.',
            type: EventType.death,
            location: 'Purulia, West Bengal',
            coordinates: const EventCoordinates(lat: 23.3321, lng: 86.3652),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'surya-sen',
    name: 'Surya Sen',
    title: 'Master Da',
    born: '22 March 1894',
    died: '12 January 1934',
    birthYear: 1894,
    deathYear: 1934,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Surya Sen, known as Master Da, led the Chittagong Armoury Raid and became one of the most enduring symbols of armed anti-colonial resistance in Bengal.',
    chapters: [
      Chapter(
        id: 'ss-life',
        title: 'Master Da',
        subtitle: 'Teacher, Organizer, Revolutionary',
        yearRange: '1894 - 1934',
        events: [
          TimelineEvent(
            id: 'ss-1',
            year: 1894,
            month: '22 March',
            title: 'Birth of Surya Sen',
            description:
                'Surya Sen was born in Noapara, Chittagong, to school teacher Ramaniranjan Sen in what was then undivided Bengal under colonial rule.',
            type: EventType.birth,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'ss-2',
            year: 1916,
            title: 'Higher studies at Berhampore College',
            description:
                'He pursued undergraduate studies at Berhampore College in Murshidabad, later known as Krishnath College.',
            type: EventType.education,
            location: 'Murshidabad, West Bengal',
            coordinates: const EventCoordinates(lat: 24.0986, lng: 88.2679),
          ),
          TimelineEvent(
            id: 'ss-3',
            year: 1916,
            title: 'Joined the Anushilan Samiti',
            description:
                'Inspired by nationalism and a politically active teacher, Surya Sen joined the Anushilan Samiti, a youth organization committed to ending British rule.',
            type: EventType.movement,
            location: 'Berhampore College, Murshidabad',
            coordinates: const EventCoordinates(lat: 24.0986, lng: 88.2679),
          ),
          TimelineEvent(
            id: 'ss-4',
            year: 1918,
            title: 'Became a teacher at National School',
            description:
                'In 1918, he began teaching at the National School in Nandankanan, Chittagong, earning the name Master Da.',
            type: EventType.achievement,
            location: 'Nandankanan, Chittagong',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'ss-5',
            year: 1928,
            month: '1920s',
            title: 'Participation in the Non-Cooperation Movement',
            description:
                'He became closely associated with the Non-Cooperation Movement and was imprisoned during the late 1920s as anti-colonial activism intensified in Chittagong.',
            type: EventType.arrest,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'ss-6',
            year: 1930,
            month: '18 April',
            title: 'Led the Chittagong Armoury Raid',
            description:
                'Surya Sen led the Indian Republican Army in the Chittagong Armoury Raid, aiming to cut communication lines, seize arms, and spark armed resistance. Though the uprising was eventually suppressed, the attack became legendary.',
            type: EventType.movement,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'ss-7',
            year: 1933,
            month: '16 February',
            title: 'Captured by British authorities',
            description:
                'After years of resistance and guerrilla activity following the raid, Surya Sen was finally captured on 16 February 1933.',
            type: EventType.arrest,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
          TimelineEvent(
            id: 'ss-8',
            year: 1934,
            month: '12 January',
            title: 'Execution',
            description:
                'Surya Sen was executed on 12 January 1934 along with Tarakeswar Dastidar. His death cemented his place as one of the great martyrs of the independence struggle.',
            type: EventType.death,
            location: 'Chittagong, Bengal',
            coordinates: const EventCoordinates(lat: 22.3569, lng: 91.7832),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'batukeshwar-dutta',
    name: 'Batukeshwar Dutta',
    title: 'Revolutionary of the Assembly Protest',
    born: '18 November 1910',
    died: '20 July 1965',
    birthYear: 1910,
    deathYear: 1965,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Batukeshwar Dutta was a revolutionary associated with Bhagat Singh and the HSRA, remembered for the Central Legislative Assembly protest and years of harsh imprisonment.',
    chapters: [
      Chapter(
        id: 'bd-life',
        title: 'Revolution and Imprisonment',
        subtitle: 'Defiance in Court, Prison, and Public Memory',
        yearRange: '1910 - 1965',
        events: [
          TimelineEvent(
            id: 'bd-1',
            year: 1910,
            month: '18 November',
            title: 'Birth of Batukeshwar Dutta',
            description:
                'Batukeshwar Dutta was born on 18 November 1910 in Khandaghosh village of Burdwan district in the Bengal Presidency.',
            type: EventType.birth,
            location: 'Khandaghosh, West Bengal',
            coordinates: const EventCoordinates(lat: 23.2311, lng: 87.7139),
          ),
          TimelineEvent(
            id: 'bd-2',
            year: 1924,
            month: '1910 - 1929',
            title: 'Education and revolutionary influence',
            description:
                'He studied at Theosophical High School and later at Prithvinath College in Kanpur, where his friendship with Bhagat Singh drew him into the Hindustan Socialist Republican Association and the Naujawan Bharat Sabha.',
            type: EventType.education,
            location: 'Kanpur, Uttar Pradesh',
            coordinates: const EventCoordinates(lat: 26.4499, lng: 80.3319),
          ),
          TimelineEvent(
            id: 'bd-3',
            year: 1929,
            month: '8 April',
            title: 'Central Legislative Assembly bombing protest',
            description:
                'Batukeshwar Dutta and Bhagat Singh threw two handmade bombs into the Central Legislative Assembly in Delhi to protest British repression. They shouted slogans, distributed leaflets, and intended the blast as a political message rather than an act to kill.',
            type: EventType.movement,
            location: 'Central Legislative Assembly, Delhi',
            coordinates: const EventCoordinates(lat: 28.6170, lng: 77.2130),
          ),
          TimelineEvent(
            id: 'bd-4',
            year: 1930,
            month: '1929 - 1938',
            title: 'Hunger strike and transportation for life',
            description:
                'He joined Bhagat Singh in a long hunger strike demanding better treatment for political prisoners. Sentenced to life, he was jailed in the Andamans and later transferred through Hazaribagh, Delhi, and Patna prisons while continuing to protest abuse.',
            type: EventType.arrest,
            location: 'Cellular Jail, Andamans',
            coordinates: const EventCoordinates(lat: 11.6739, lng: 92.7356),
          ),
          TimelineEvent(
            id: 'bd-5',
            year: 1938,
            title: 'Released from prison',
            description:
                'Batukeshwar Dutta was released from Patna prison in 1938, but the years of incarceration left him with tuberculosis.',
            type: EventType.achievement,
            location: 'Patna, Bihar',
            coordinates: const EventCoordinates(lat: 25.5941, lng: 85.1376),
          ),
          TimelineEvent(
            id: 'bd-6',
            year: 1942,
            title: 'Returned to struggle during Quit India',
            description:
                'Despite poor health, he joined the Quit India Movement in 1942 and was imprisoned again for four years.',
            type: EventType.arrest,
            location: 'Patna, Bihar',
            coordinates: const EventCoordinates(lat: 25.5941, lng: 85.1376),
          ),
          TimelineEvent(
            id: 'bd-7',
            year: 1947,
            month: 'November',
            title: 'Marriage and later years',
            description:
                'After independence, Batukeshwar Dutta married Anjali in November 1947, stepped back from active politics, and continued writing while coping with the long-term effects of prison abuse and illness.',
            type: EventType.milestone,
            location: 'Patna, Bihar',
            coordinates: const EventCoordinates(lat: 25.5941, lng: 85.1376),
          ),
          TimelineEvent(
            id: 'bd-8',
            year: 1965,
            month: '20 July',
            title: 'Death',
            description:
                'Batukeshwar Dutta died of cancer at AIIMS, Delhi, on 20 July 1965. In accordance with his last wish, he was cremated at Hussainiwala near the memorials of Bhagat Singh, Rajguru, and Sukhdev.',
            type: EventType.death,
            location: 'AIIMS, New Delhi',
            coordinates: const EventCoordinates(lat: 28.5672, lng: 77.2100),
          ),
        ],
      ),
    ],
  ),
  Fighter(
    id: 'bina-das',
    name: 'Bina Das',
    title: 'Fearless Revolutionary of Bengal',
    born: '24 August 1911',
    died: '26 December 1986',
    birthYear: 1911,
    deathYear: 1986,
    portraitAsset: _fallbackPortrait,
    shortBio:
        'Bina Das was a revolutionary nationalist from Bengal whose attempt on the Governor of Bengal and later political work made her one of the most fearless women in India’s freedom struggle.',
    chapters: [
      Chapter(
        id: 'binadas-life',
        title: 'Resistance and Sacrifice',
        subtitle: 'Student Radicalism to Public Service',
        yearRange: '1911 - 1986',
        events: [
          TimelineEvent(
            id: 'binadas-1',
            year: 1911,
            month: '24 August',
            title: 'Birth of Bina Das',
            description:
                'Bina Das was born in Krishnanagar, West Bengal, into a family active in the Brahmo Samaj and the freedom movement. Her father Beni Madhab Das was a noted teacher.',
            type: EventType.birth,
            location: 'Krishnanagar, West Bengal',
            coordinates: const EventCoordinates(lat: 23.4009, lng: 88.5014),
          ),
          TimelineEvent(
            id: 'binadas-2',
            year: 1918,
            month: '1911 - early 1920s',
            title: 'Early nationalist influences',
            description:
                'Growing up amid nationalist thought and inspired by leaders such as Subhas Chandra Bose, Bina Das began openly resisting imperial symbols during her student years.',
            type: EventType.milestone,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'binadas-3',
            year: 1928,
            month: 'Late 1920s',
            title: 'Bethune College protests and Chhatri Sangha',
            description:
                'While studying at Bethune College, she organized protests during the era of Simon Commission agitation and joined the Chhatri Sangha, where women students received basic self-defense training.',
            type: EventType.movement,
            location: 'Bethune College, Kolkata',
            coordinates: const EventCoordinates(lat: 22.5840, lng: 88.3646),
          ),
          TimelineEvent(
            id: 'binadas-4',
            year: 1932,
            month: '6 February',
            title: 'Attempted shooting of the Governor of Bengal',
            description:
                'At her Calcutta University graduation, Bina Das fired five shots at Governor Stanley Jackson as an act of protest against British rule. The attempt failed, and she was sentenced to nine years in prison after severe torture.',
            type: EventType.movement,
            location: 'Calcutta University, Kolkata',
            coordinates: const EventCoordinates(lat: 22.5744, lng: 88.3629),
          ),
          TimelineEvent(
            id: 'binadas-5',
            year: 1942,
            month: '1941 - 1945',
            title: 'Release and renewed activism',
            description:
                'After her release, Bina Das remained active in politics through the Calcutta Congress Committee and took part in Quit India protests and strikes, leading to her arrest again until 1945.',
            type: EventType.arrest,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'binadas-6',
            year: 1947,
            title: 'Marriage',
            description:
                'In 1947, she married Jatish Chandra Bhaumik, who had also been associated with the Jugantar movement.',
            type: EventType.milestone,
            location: 'Kolkata, West Bengal',
            coordinates: const EventCoordinates(lat: 22.5726, lng: 88.3639),
          ),
          TimelineEvent(
            id: 'binadas-7',
            year: 1960,
            title: 'Awarded the Padma Shri',
            description:
                'Bina Das was honored with the Padma Shri in 1960 in recognition of her contribution to India’s independence.',
            type: EventType.achievement,
            location: 'Rashtrapati Bhavan, New Delhi',
            coordinates: const EventCoordinates(lat: 28.6143, lng: 77.1996),
          ),
          TimelineEvent(
            id: 'binadas-8',
            year: 1986,
            month: '26 December',
            title: 'Death',
            description:
                'Bina Das died in Rishikesh, Uttarakhand, on 26 December 1986. She is remembered for her fearlessness, sacrifice, and resistance to British rule.',
            type: EventType.death,
            location: 'Rishikesh, Uttarakhand',
            coordinates: const EventCoordinates(lat: 30.0869, lng: 78.2676),
          ),
        ],
      ),
    ],
  ),
];
