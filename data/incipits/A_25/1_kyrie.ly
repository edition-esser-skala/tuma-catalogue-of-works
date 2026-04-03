\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 g''2 g4
    e8 e e e e2
    r4 g g4. e8
    f4 f f2~
    f4 f8 f e4 g~
    g fis g2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 e'2 e4
    c8 c c c c2
    r4 e e cis8 e
    e4 d8 d h2
    h c!4 e
    c2 h
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 e'2^\tutti e4
    e1
    r4 e e2~
    e4 d8 d d2
    h e
    c h
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri --
  e
  e -- lei --
  son, e -- lei --
  son, e --
  lei -- son.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 g'2^\tutti g4
    g1
    r4 g g2
    f4 f f2~
    f e4 g
    g fis g2
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri --
  e
  e -- lei --
  son, e -- lei --
  son, e --
  lei -- _ son.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c2^\tutti c4
    c1
    r4 cis cis a
    a a h2
    d4 d d c8 d
    e4 d8[ c] d2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri --
  e
  e -- lei -- _
  son, e -- lei --
  son, e -- lei -- son, e --
  lei -- _ son.
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    r4 c2^\tutti c4
    b1
    r4 a a2
    d4 d gis,2
    g c
    a g
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri --
  e
  e -- lei --
  son, e -- lei --
  son, e --
  lei -- son.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    r4 c2-\tutti c4
    b1
    r4 a a2
    d gis,
    g c
    a g
  }
}

BassFigures = \figuremode {
  r1
  <6 4 2>
  r4 <7 _+>2.
  <10 9>4 <\t 8> <7! 5!>2
  <7> <10 9>4 <\t 8>
  <7> <6\\>2.
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
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
