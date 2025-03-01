\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key d \major \time 2/2 \tempoMarkup "Andante"
    a'1
    a2 a
    d a'
    fis d,
    r cis'
    e a,,
    r fis''
    a d,,
    r d'
    e a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key d \major \time 2/2 \tempoMarkup "Andante"
    R1*2
    d1
    d2 d
    a'1
    a2 a
    fis4( g) a( g)
    fis( g) e( fis)
    g2 d'~
    d cis4 h
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    a'1
    a2 a
    d1
    d2 d
    cis4( d) e( d)
    cis( d) h( cis)
    d2 c4( h)
    a( h) g( a)
    h cis! d2~
    d cis4( h)
  }
}

SopranoLyrics = \lyricmode {
  Iu --
  stus ut
  pal --
  ma flo --
  re -- _
  _ _
  _ _
  _ _
  _ _ _
  \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1*2
    d1
    d2 d
    a'1
    a2 a
    fis4( g) a( g)
    fis( g) e( fis)
    g2 fis
    e2. e4
  }
}

AltoLyrics = \lyricmode {
  Iu --
  stus ut
  pal --
  ma flo --
  re -- _
  _ _
  _ _
  bit, "flo -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1*9
    a1
  }
}

TenoreLyrics = \lyricmode {
  "Iu -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 2/2 \tempoMarkup "Andante" \autoBeamOff
    R1*10
  }
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key d \major \time 2/2 \tempoMarkup "Andante"
    a''1-!
    a2-! a-!
    << {
      d1
      d2 d
      cis4 d e d
      cis d h cis
      d2 c4 h
      a h g a
      h cis! d2
    } \\ {
      d,1
      d2 d
      a'1
      a2 a
      fis4 g a g
      fis g e fis
      g2 fis
    } >>
    \clef tenor a,1
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  r
  r
  r
  <5 4>
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
