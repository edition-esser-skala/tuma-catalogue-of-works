\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 2/2 \tempoMarkup "Andante"
    d'2\f g
    g\p fis
    a\f c,
    c(\p\trill h) \gotoBar "28"
    g'2 r
    g fis
    g r4 d
    e2 c'
    h d,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 2/2 \tempoMarkup "Andante"
    h'2\f r
    c\p r
    d,\f a'
    a(\p g) \gotoBar "28"
    d'2 r
    c1
    d2 r4 g,
    g2 e'
    d r4 a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 2/2 \tempoMarkup "Andante"
    R1*4 \gotoBar "28"
    d'2 d
    c c
    h c4 d
    e1
    d2 d
  }
}

SopranoLyrics = \lyricmode {
  Con -- fi --
  te -- bor
  Do -- mi -- no
  ni --
  mis in
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 2/2 \tempoMarkup "Andante"
    R1*4 \gotoBar "28"
    g'2 g
    g fis
    g g4 g
    g1
    g2 a
  }
}

AltoLyrics = \lyricmode {
  Con -- fi --
  te -- bor
  Do -- mi -- no
  ni --
  mis in
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 2/2 \tempoMarkup "Andante"
    R1*4 \gotoBar "28"
    h2 h
    c c
    d d4 d
    d2 c
    h d
  }
}

TenoreLyrics = \lyricmode {
  Con -- fi --
  te -- bor
  Do -- mi -- no
  ni -- _
  mis in
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 2/2 \tempoMarkup "Andante"
    R1*4 \gotoBar "28"
    g2 g
    a a
    h h4 h
    c d e fis
    g2 fis
  }
}

BassoLyrics = \lyricmode {
  Con -- fi --
  te -- bor
  Do -- mi -- no
  ni -- _ _ _
  mis in
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 2/2 \tempoMarkup "Andante"
    g2\f r
    a\p r
    fis'\f r
    g\p r \gotoBar "28"
    g,2-\tutti g
    a a
    h h4 h
    c d e fis
    g2 fis
  }
}

BassFigures = \figuremode {
  r1
  <6\\>
  <5>
  r
  r1
  <7>2 <6\\>
  <6>1
  r
  r2 q
}

\score {
  <<
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
