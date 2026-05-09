\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a'1~
    a2 a
    b1
    a2 d
    d c
    b4 a b2
    a d
    d cis
    d r
    R1
  }
}

SopranoLyrics = \lyricmode {
  U --
  na
  ho --
  ra non
  po -- tu --
  i -- _ stis
  vi -- gi --
  la -- _
  re
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1
    d~
    d2 d
    f1
    e2 a
    a g
    f1
    e
    f2 g
    a d,
  }
}

AltoLyrics = \lyricmode {
  U --
  na
  ho --
  ra non
  po -- tu --
  i --
  stis
  vi -- gi --
  la \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*8
    d2. d4
    a2 h!
  }
}

TenoreLyrics = \lyricmode {
  vi -- gi --
  la -- re
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*7
    a'2. a4
    d,2 e
    f1
  }
}

BassoLyrics = \lyricmode {
  vi -- gi --
  la -- re
  "me -"
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro"
    << {
      a''1~
      a2 a
      b1
      a2 d~
      d c
      b1
      a2 d
    } \\ {
      s1
      d,~
      d2 d
      f1
      e2 a~
      a g
      f1
    } >>
    \clef bass a,1
    d,2 e
    f1
  }
}

BassFigures = \figuremode {
  s1*7
  <4>2 <_+>
  r1
  <5>2 <6>
}

\score {
  <<
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
