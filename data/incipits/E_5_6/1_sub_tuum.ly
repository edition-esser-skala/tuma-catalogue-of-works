\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    h'2 h4 e8 e
    e8. d16 d8 d c8. c16 c4
    h8 e, e' e e4 dis
    e r h h8 h
    e4 e8 e d!4 d
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 e
    h'4 h8 h h4 a
    a g fis4. fis8
    g4 g8 g fis fis fis fis
    g g a8. a16 fis8 fis16 fis g8 a
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r2 h4. h8
    e4. e8 e4 d!
    c2 h
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    e4. e8 h'4 h8 h
    h4 a a g8 fis
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    h'2 h4 e8 e
    e8. d16 d8 d c8. c16 c4
    h8 e, e' e e4 dis
    e r h h8 h
    e4 e8 e d!4 d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r2 e
    h'4 h8 h h4 a
    a g fis4. fis8
    g4 g8 g fis fis fis fis
    g g a8. a16 fis8 fis16 fis g8 a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    h'2 h4 e8 e
    e8. d16 d8 d c8. c16 c4
    h8 e, e' e e4 dis
    e r h h8 h
    e4 e8 e d!4 d
  }
}

SopranoLyrics = \lyricmode {
  Sub tu -- um prae --
  si -- di -- um con -- fu -- gi -- mus,
  San -- cta De -- i Ge -- ni -- trix,
  sed a per --
  i -- cu -- lis cun -- ctis
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 e
    h'4 h8 h h4 a
    a g fis4. fis8
    g4 g8 g fis fis fis fis
    g g a8. a16 fis8 fis16 fis g8 a
  }
}

AltoLyrics = \lyricmode {
  Con --
  fu -- gi -- mus, San -- cta
  De -- i Ge -- ni --
  trix, no -- stras de -- pre -- ca -- ti --
  o -- nes ne de -- spi -- ci -- as in "ne -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    r2 h4. h8
    e4. e8 e4 d!
    c2 h
  }
}

TenoreLyrics = \lyricmode {
  No -- stras
  de -- pre -- ca -- ti --
  o -- nes
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*3
    e4. e8 h'4 h8 h
    h4 a a g8[ fis]
  }
}

BassoLyrics = \lyricmode {
  Ne de -- spi -- ci -- as
  in ne -- ces -- "si -"
}

Organo = {
  \relative c {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    << {
      h''2 h4 e~
      e d c2
      h4 e
    } \\ {
      r2 e,
      h'2. a4~
      a g
    } >> \clef tenor h,2
    \clef bass e, h'~
    h4 a2 g8 fis
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <4>4 <_+>
  r2 <4>4 <3>
  <4 2> <5> <4 2> <5>8 <6>
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
