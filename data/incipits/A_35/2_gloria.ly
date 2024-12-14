\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 g'8 g fis fis r4
    R1
    e4. e8 e4 a
    a8 g g fis g4 r8 g
    a g16 fis e8. e16 fis4 r8 g16 g
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 e8 e e dis r4
    R1
    h8 e, h' e e c a d
    d e e d d4 r8 h
    a d16 c h8 a a4 r8 h16 h
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 h''8 g fis4 r
    fis,\p r8 fis fis8. e16 e4
    e'16\f h c h e h c h c a h a d! a h a
    h8 g'4 fis8 g g, d'4~
    d4. cis8\trill d fis, h4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 g''8 e e dis r4
    h,\p r8 h h2
    e'16\f h c h e h c h c a h a d! a h a
    h8 c a4 g8 g d'4
    d4. cis8 d fis, h4~
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 h'8^\tutti h h h r4
    a\p r8 a a8. g16 g4
    e'16[\f h c h] e[ h c h] c[ a h a] d![ a] h[ a]
    h8 c a4 g8 g d'4~
    d4. cis8 d fis,16 fis h4
  }
}

SopranoLyrics = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- _ _ _ nae
  vo -- lun -- ta -- tis. Lau -- da --
  mus te, be -- ne -- "di -"
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 g'8^\tutti g fis fis r4
    fis4.\p fis8 fis8. e16 e4
    e4.\f e8 e4 a
    a8 g g[ fis] g4 r8 g
    a[ g16 fis] e8. e16 fis4 r8 g16 g
  }
}

AltoLyrics = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- nae, bo -- nae
  vo -- lun -- ta -- tis. Lau --
  da -- _ mus te, be -- "ne -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 e8^\tutti e e dis r4
    h\p r8 h h8. h16 h4
    h8\f e, h' e e[ c] a[ d]
    d e e[ d] d4 r8 h
    a[ d16 c] h8 a a4 r8 h16 h
  }
}

TenoreLyrics = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- nae, bo -- nae, bo -- nae
  vo -- lun -- ta -- tis. Lau --
  da -- _ mus te, be -- "ne -"
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 e8^\tutti g h h, r4
    dis\p r8 dis e8. e16 e4
    gis4.\f gis8 a4 fis
    g8 e c[ d] g,4 r8 g'
    fis[ h16 a] g8 a d,4 r8 e16 e
  }
}

BassoLyrics = \lyricmode {
  Et in ter -- ra
  pax ho -- mi -- ni -- bus
  bo -- nae, bo -- nae
  vo -- lun -- ta -- tis. Lau --
  da -- _ mus te, be -- "ne -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 e8-\tutti g h h, r4
    dis\p r8 \hA dis e2
    gis4.\f gis8 a4 fis
    g8 e c d g,4 r8 g'
    fis h16 a g8 a d,4 r8 e
  }
}

BassFigures = \figuremode {
  r2 <5 4>8 <\t _+>4.
  <6 5>2 <9 4>4 <8 3>
  r1
  r4 <6 5>2.
  r4 <6 5>8 <_+>2 <5>8
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
