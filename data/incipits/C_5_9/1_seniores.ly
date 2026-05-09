\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*3
    r2 d'
    d cis
    d d
    cis2. h8[ cis]
    d1
    cis\breve*1/2
  }
}

SopranoLyrics = \lyricmode {
  Con --
  si -- li --
  um fe --
  ce -- _
  _
  runt,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1*3
    r2 a'
    g e
    f f
    e a~
    a g
    a\breve*1/2
  }
}

AltoLyrics = \lyricmode {
  Con --
  si -- li --
  um fe --
  ce -- _
  _
  runt,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    d2. d4
    c2 a
    b2. b4
    a2 a
    h e
    a, a
    a1
    d,
    e\breve*1/2
  }
}

TenoreLyrics = \lyricmode {
  Se -- ni --
  o -- res
  po -- pu --
  li con --
  si -- li --
  um fe --
  ce --
  _
  runt,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    R1
    a'2. a4
    g2 e
    f2. f4
    e2 e
    d4 e f g
    a2 a,
    b1
    a\breve*1/2
  }
}

BassoLyrics = \lyricmode {
  Se -- ni --
  o -- res
  po -- pu --
  li con --
  si -- _ li -- _
  um fe --
  ce --
  runt,
}

Organo = {
  \relative c {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allegro"
    d'1
    \clef bass a2. a4
    g2 e
    f1
    e
    d4 e f g
    a2 a,
    b1
    a\breve*1/2
  }
}

BassFigures = \figuremode {
  r1
  r
  <6>2 <6 5>
  r1
  <7>2 <6>
  r1
  <_+>2 q
  <7> <6>
  <_+>1
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
