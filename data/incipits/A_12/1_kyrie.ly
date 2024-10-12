\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante"
    R1
    e2 g
    fis h~
    h a
    g1
    fis2 e
    g1
    a2 fis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante"
    R1*5
    h2 c
    h e~
    e d!
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante"
    h'2 c
    h e~
    e d
    c1
    h2 e
    dis e~
    e h
    a d!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante"
    R1
    e2 g
    fis h~
    h a
    g1
    fis2 e
    g1
    a2 fis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    h'2^\tutti c
    h e~
    e d
    c1
    h2 e
    dis e
    e h
    a d!
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri --
  e e --
  _
  lei --
  son, e --
  lei -- _
  son, e --
  lei -- \hy
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1
    e2^\tutti g
    fis h~
    h a
    g1
    fis2 e
    g1
    a2 fis
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri --
  e e --
  _
  lei --
  son, e --
  lei --
  son, "e -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1*5
    h2^\tutti c
    h e~
    e d!
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri --
  e e --
  \hy
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1*6
    e2^\tutti g
    fis h
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri --
  e "e -"
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Andante"
    << {
      h''2_\tutti c
      h e~
      e d
      c1
      h2 e
    } \\ {
      R1
      e,2 g
      fis h~
      h a
      g1
    } >>
    \clef tenor h,2 c
    \clef bass e, g
    fis h
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  <_+>
  r2 <6>
  <7>1
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
