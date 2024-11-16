\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    R2.*6
    r4 h' h
    h2 h4
    h2 a4
    h2 h4
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    R2.*6
    r4 g' g
    fis2 fis4
    e2 e4
    fis2 fis4
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    R2.*5
    r4 h h
    e2 e4~
    e dis dis
    e2.
    dis
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    R2.*6
    r4 e e
    h'2.
    c
    h
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    r4 e'8( dis) e4
    r e8( dis) e4
    r e8( dis) e4
    dis h'8( g) a( fis)
    g h, g'( e) fis( dis)
    e cis dis4.\trill e8
    e4 r r
    r fis8( e) fis4
    r e8( dis) e4
    r dis8( cis) \hA dis4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    r4 g'8( fis) g4
    r g8( fis) g4
    r g8( fis) g4
    fis r r
    r h8( g) a( fis)
    g a fis4.\trill e8
    e4 r r
    r dis'8( cis) \hA dis4
    r \once \stemUp h( a)
    r h8( a) h4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/4 \tempoMarkup "Larghetto" \autoBeamOff
    R2.*6
    r4 h'^\tutti h
    h2 h4
    h2 a4
    h2 h4
  }
}

SopranoLyrics = \lyricmode {
  Pan -- ge,
  lin -- gua,
  glo -- ri --
  o -- si
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/4 \tempoMarkup "Larghetto" \autoBeamOff
    R2.*6
    r4 g'^\tutti g
    fis2 fis4
    e2 e4
    fis2 fis4
  }
}

AltoLyrics = \lyricmode {
  Pan -- ge,
  lin -- gua,
  glo -- ri --
  o -- si
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/4 \tempoMarkup "Larghetto" \autoBeamOff
    R2.*5
    r4 h^\tutti h
    e2 e4~
    e dis dis
    e2.
    dis
  }
}

TenoreLyrics = \lyricmode {
  Pan -- ge,
  lin -- gua, __
  glo -- ri --
  o --
  si
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Larghetto" \autoBeamOff
    R2.*6
    r4 e^\tutti e
    h'2 h4
    c2 c4
    h2 h4
  }
}

BassoLyrics = \lyricmode {
  Pan -- ge,
  lin -- gua,
  glo -- ri --
  o --
  si
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Larghetto"
    e4-\solo r r
    c r r
    ais2.
    h-\tasto
    h
    h
    e,4 e'-\tutti e
    h'2.
    c
    h
  }
}

BassFigures = \figuremode {
  r2.
  r
  <7 5! [_+]>
  <_+>
  r
  <4>4 <_+>2
  r2.
  <4>4 <_+>2
  <7> <6>4
  <_+>2.
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
