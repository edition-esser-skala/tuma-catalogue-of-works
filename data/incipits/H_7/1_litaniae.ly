\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Presto"
    R1*3
    d'4. d8 cis4 c
    h e cis d~
    d cis d d~
    d c2 c4
    h4. h8 a4 h
    g a a2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Presto"
    R1*2
    r2 g'4. g8
    fis4 f e d
    d g e fis
    g2 fis4 fis
    g g a a
    g4. g8 fis4 fis
    g e fis2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "Presto" \autoBeamOff
    R1*3
    d'4.^\tutti d8 cis4 c
    h e cis d
    d cis d d~
    d c c4. c8
    h4 h a h
    g4. a8 a2
  }
}

SopranoLyrics = \lyricmode {
  Chri -- ste, Chri -- _
  ste e -- lei -- _
  _ _ son, Chri --
  ste au -- di
  nos, Chri -- ste ex --
  au -- di nos.
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "Presto" \autoBeamOff
    R1*2
    r2 g'4.^\tutti g8
    fis4 f e d
    d g e fis
    g2 fis4 fis
    g2 a4. a8
    g4 g fis fis
    g e fis2
  }
}

AltoLyrics = \lyricmode {
  Chri -- ste,
  Chri -- _ ste e --
  lei -- _ son, e --
  lei -- son, Chri --
  ste au -- di
  nos, Chri -- ste ex --
  au -- di nos.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "Presto" \autoBeamOff
    r2 d4.^\tutti d8
    cis4 c c h
    a2 h4 h
    a2 a4 a
    h g a a
    g2 a4 a
    g e' d d
    d d d d
    e4. e8 d2
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- son,
  Chri -- ste e --
  lei -- son, Ky --
  _ ri -- e e --
  lei -- son, Chri --
  _ ste au -- di
  nos, Chri -- ste ex --
  au -- di nos.
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Presto" \autoBeamOff
    g'4.^\tutti g8 fis4 f
    e a fis g
    g fis g g,
    d' d a' fis
    g4. g8 g4 fis
    e2 d4 d
    e2 fis4. fis8
    g4 h,8[ c] d4 d
    d cis d2
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- _ son, e --
  lei -- _ son, Chri --
  ste e -- lei -- son,
  Ky -- ri -- e e --
  lei -- son, Chri --
  ste au -- di
  nos, Chri -- ste ex --
  au -- di nos.
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Presto"
    g'4.-! g8-! fis4 f
    e a fis g~
    g fis g g,
    d' d a' fis
    g4. g8 g4 fis
    e2 d4. d8
    e2 fis4. fis8
    g4 h,8 c d4 d
    d cis d2
  }
}

BassFigures = \figuremode {
  r2 <6>4 <\t>
  <6\\> <_!> <5!> <3>
  <4 2> <\t \t> <5 3>2
  <_+>4 <8 _!> <_+> <5!>
  <3> <6> <4\+ 2> <6>
  <7> <6\\>2.
  <7>4 <6!> <6 5!>2
  r <5 _+>4 <6 \t>
  <4 2> <6>2.
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
